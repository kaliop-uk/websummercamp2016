#!/usr/bin/env bash

# Command to dump the dev db + storage
# We try to clean up both the db and the storage as much as possible when dumping
#
# @todo allow user to specify target files

function help {
    echo 'Usage: dumpdb.sh [-f] [env]'
    echo 'Options:'
    echo '  -p: partial storage (delete image variations)'
    exit 1
}

FULLSTORAGE=true

while getopts ":f" opt; do
    case $opt in
        p)
            FULLSTORAGE=false
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
IMAGESREGEXP='.*_(large|small|brand_thumbnail|brand_big|medium|tiny|latest_thumbnail)\.(png|jpg|gif|jpeg)'
VARDIR=`php ./bin/ezp5installer.php config:get --key=ezpublish.system.${GROUP}.var_dir --file=ezpublish/config/ezpublish.yml --env=$ENV`

### action!

echo "*** Using Symfony environment: $ENV ***"

# clean up the db
echo "Cleaning up the database..."
cd ezpublish_legacy && php bin/php/flatten.php all; cd ..
php bin/ezp5installer.php database:cleanup "mysql:dbname=$DBNAME;host=$DBHOST" "$DBUSER" "$DBPWD"
mysql -h$DBHOST -u$DBUSER -p$DBPWD $DBNAME -e 'delete from rss_feed_entry;'

# dump db
echo "Dumping the database..."
mysqldump -h$DBHOST -u$DBUSER -p$DBPWD $DBNAME --single-transaction --skip-dump-date --extended-insert=FALSE | grep -v "50013 DEFINER" > "$DBDUMP"

# store the minimum amount of image files possible:

# remove images and files which are not in the db any more
echo "Cleaning up the storage..."
cd ezpublish_legacy
php extension/ezdbintegrity/bin/php/checkstorage.php --cleanup
cd ..

# can we use a regexp to not archive the undesirable image variations?
# a: sadly, not really. 'original' images names might use a pattern which coincides with a variation...
echo "Dumping the storage..."

if $FULLSTORAGE ; then
    numfiles=$(find ./ezpublish_legacy/$VARDIR/storage/images -type f | tar cvzf "$STORAGEDUMPIMAGES" -T - | wc -l)
else
    echo "NB: there might be some loss of original image files when not using the '-f' flag"
    numfiles=$(find ./ezpublish_legacy/$VARDIR/storage/images -regextype posix-extended -type f ! -regex "$IMAGESREGEXP" | tar cvzf "$STORAGEDUMPFILES" -T - | wc -l)
fi
echo "Dumped $numfiles image files"

numfiles=$(find ./ezpublish_legacy/$VARDIR/storage/original -type f | tar cvzf "$STORAGEDUMPFILES" -T - | wc -l)
echo "Dumped $numfiles binary files"
