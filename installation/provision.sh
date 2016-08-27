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

php stack.php build

php stack.php run

docker exec ezdeploy_cli ./bin/getcomposer.sh
docker exec ezdeploy_cli composer install --no-scripts

# fix character set of default db created by the standard docker container
mysql -hmysql -uuser_ezdeploy -pNotSoSecret -e 'drop database ezdeploy'
mysql -hmysql -uuser_ezdeploy -pNotSoSecret -e 'create database ezdeploy character set utf8'

# import database

# TODO

# symlink legacy settings

# TODO
