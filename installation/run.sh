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

docker exec ezdeploly_cli composer install --no-scripts
