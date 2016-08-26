#!/usr/bin/env bash

# This script is supposed to set up the whole installation:

# 1. build docker images
# 2. install ezpublish

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo service apache2 stop
sudo service mysql stop

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
