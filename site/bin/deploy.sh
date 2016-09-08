#!/usr/bin/env bash

# command to deploy dev/staging/uat/prod environments

function help {
    echo 'Usage: deploy.sh [-i] [env]'
    echo 'Options:'
    echo '  -i: import db'
    exit 1
}

IMPORTDB=false
# allow env to tell use how to invoke composer
COMPOSER=composer
if [ -n "$COMPOSER_EXE" ]; then
    COMPOSER="$COMPOSER_EXE"
else
    COMPOSER=composer
fi

while getopts ":i" opt; do
    case $opt in
        i)
            IMPORTDB=true
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

### action!

echo "*** Using Symfony environment: $ENV ***"

# @todo abort on git fail ?
echo "Updating sources..."
git pull

echo "Running composer..."
# fully automate the composer-install by a ugly hack
sed -i "s/__token_extras::begin__.*__token_extras::end__/ezpublish-asset-dump-env\":\"$ENV/g" composer.json
if [ "dev" = "$ENV" ]; then
    $COMPOSER install
else
    $COMPOSER install --no-dev
fi
git checkout -- composer.json

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if $IMPORTDB ; then
    # import db
    $DIR/importdb.sh $ENV
fi

# @todo the following commands could reasonably be added to composer.json. But we have to import the db first...

# purge php opcache
echo "Purging opcache cache..."
php $DIR/ezp5installer.php http:request --key=parameters.opcache_purge_url --env=$ENV

# reindex. we always do it, in case any indexation setting has changed
echo "Reindexing content..."
php ezpublish/console ezpublish:legacy:script bin/php/updatesearchindex.php --siteaccess=ezdeploy_site_admin --clean --env=$ENV

# purge memcache (based on env settings)
echo "Purging memcache..."
php $DIR/ezp5installer.php memcache:purge --env=$ENV

# purge varnish (based on env settings)
echo "Purging varnish..."
if [ "dev" = "$ENV" or "uat" = "$ENV" ]; then
    # when deploying the 'dev' envs, we clear varnish for the 'demo' env, as they run both on the same installation
    php $DIR/ezp5installer.php varnish:purge --key=ezpublish.system.ezdeploy_site_group.http_cache.purge_servers --env=demo
else
    php $DIR/ezp5installer.php varnish:purge --key=ezpublish.system.ezdeploy_site_group.http_cache.purge_servers --env=$ENV
fi

# and, for good measure:
if [ "dev" = "$ENV" ]; then
    php ezpublish/console security:check --env=$ENV
fi

# Tell NewRelic that we deployed
if [ "prod" = "$ENV" ]; then
    REVISION=`git rev-parse HEAD`
    curl -X POST --header 'x-api-key: 1234567890' \
        -d "deployment[app_name]=WebSummerCamp2016/Deploy" \
        -d "deployment[revision]=$REVISION" \
        'https://api.newrelic.com/deployments.xml'
fi
