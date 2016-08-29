#!/usr/bin/env bash

# This script is supposed to set up the whole installation:
#
# 1. build docker images
# 2. install ezpublish
#
# It should be run only once

ID="$(id -u)"
if [ $ID -ne 0 ]; then
    echo "The script might ask you for your account password a couple of times, in order to stop running services"
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

STATUS="$(service apache2 status)"
if [ $ID -eq 0 ]; then
    service apache2 stop
fi
STATUS="$(service mysql status)"
if [ $ID -eq 0 ]; then
    service mysql stop
fi

cd $DIR

if [ -f docker-compose.env.local ]; then
    touch docker-compose.env.local
fi

php stack.php build

php stack.php run

# install composer
docker exec ezdeploy_cli su site -c './bin/getcomposer.sh'

# install dependencies
docker exec ezdeploy_cli su site -c 'composer install --no-scripts'

# fix character set of default db created by the standard docker container
docker exec ezdeploy_cli su site -c 'mysql -hmysql -uuser_ezdeploy -pNotSoSecret -e "drop database ezdeploy"'
docker exec ezdeploy_cli su site -c 'mysql -hmysql -uuser_ezdeploy -pNotSoSecret -e "create database ezdeploy character set utf8"'

# import database
docker exec ezdeploy_cli su site -c './bin/importdb.sh dev'

# symlink legacy settings, assets, .htaccess, etc...
# (fully automate the composer-install by a ugly hack)
sed -i "s/__token_extras::begin__.*__token_extras::end__/ezpublish-asset-dump-env\":\"demo/g" site/composer.json
docker exec ezdeploy_cli su site -c 'composer run-script post-install-cmd'
cd site && git checkout -- composer.json; cd ..

# reindex content
docker exec ezdeploy_cli su site -c 'php ezpublish/console ezpublish:legacy:script bin/php/updatesearchindex.php --siteaccess=ezdeploy_site_admin --clean'
