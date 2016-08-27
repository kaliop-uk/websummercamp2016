#!/usr/bin/env bash

# command to import the db + storage
#
# @todo allow user to specify target files

function help {
    echo 'Usage: importdb.sh [-r] [env]'
    echo 'Options:'
    echo '  -r: reindex and clear caches'
    exit 1
}

CLEARCACHES=false

while getopts ":r" opt; do
    case $opt in
        r)
            CLEARCACHES=true
        ;;
        \?)
            help
        ;;
  esac
done

shift $((OPTIND-1))

ENV=$1

if [ -z "$ENV" ]; then
    if [ ! -z "$SYMFONY_ENV" ]; then
        ENV=$SYMFONY_ENV
    else
        help
    fi
fi

if [ ! -d ezpublish_legacy ]; then
    echo "Running script from unexpected dir, aborting. Please run from ez5 root dir"
    exit 1
fi

CONNECTION=ezdeploy
GROUP=ezdeploy_site_group

DBUSER=`php ./bin/ezp5installer.php config:get --key=doctrine.dbal.connections.${CONNECTION}_repository_connection.user --env=$ENV`
DBPWD=`php ./bin/ezp5installer.php config:get --key=doctrine.dbal.connections.${CONNECTION}_repository_connection.password --env=$ENV`
DBHOST=`php ./bin/ezp5installer.php config:get --key=doctrine.dbal.connections.${CONNECTION}_repository_connection.host --env=$ENV`
DBNAME=`php ./bin/ezp5installer.php config:get --key=doctrine.dbal.connections.${CONNECTION}_repository_connection.dbname --env=$ENV`

DBDUMP="ezpublish/data/db/$ENV.sql"
STORAGEDUMPIMAGES="ezpublish/data/storage/images_$ENV.tgz"
STORAGEDUMPFILES="ezpublish/data/storage/files_$ENV.tgz"

### action!

echo "*** Using Symfony environment: $ENV ***"

if [ -f "$DBDUMP" ]; then
    echo "Importing database..."

    mysql -h$DBHOST -u$DBUSER -p$DBPWD $DBNAME < "$DBDUMP"
fi

if [ -f "$STORAGEDUMPIMAGES" ]; then
    echo "Importing storage images..."

    numfiles=$(tar -xvzf "$STORAGEDUMPIMAGES" | wc -l)
    echo "Extracted $numfiles image files"
fi
if [ -f "$STORAGEDUMPFILES" ]; then
    echo "Importing storage files..."

    numfiles=$(tar -xvzf "$STORAGEDUMPFILES" | wc -l)
    echo "Extracted $numfiles binary files"
fi

if $CLEARCACHES ; then

    echo "Reindexing and clearing caches..."

    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

    # reindex
    php ezpublish/console ezpublish:legacy:script bin/php/updatesearchindex.php --siteaccess=CHANGEME_admin --clean

    # purge memcache
    php $DIR/ezp5installer.php memcache:purge

    # purge varnish - TO BE FIXED!!!
    php $DIR/ezp5installer.php varnish:purge --key=ezpublish.system.${group}.http_cache.purge_servers

fi
