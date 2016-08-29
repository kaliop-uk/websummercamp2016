#!/usr/bin/env bash

# This script is supposed to set up the whole installation:
#
# 1. build docker images
# 2. install ezpublish
#
# It should be run only once
#
# NB: it will leave the docker containers running and the mysql and apache services on the host machine stopped

ID="$(id -u)"
if [ $ID -ne 0 ]; then
    echo "The script might ask you for your account password a couple of times, in order to stop running services"
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

# note: we could find the process listening on ports 443 and 80 instead of just stopping Apache...
STATUS="$(service apache2 status)"
if [ $STATUS -eq 0 ]; then
    service apache2 stop
fi
# note: stopping mysql is not mandatory, we do it to save on resources
STATUS="$(service mysql status)"
if [ $STATUS -eq 0 ]; then
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

# it seems that the mysql db might take a while to become available...
sleep 60

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

echo "To continue: log on to http://deploy.websc/, http://deploy.websc/ezdeploy_site_admin, http://deploy.websc:88"
echo "or execute 'docker exec -ti ezdeploy_cli su site'"
