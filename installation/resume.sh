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
service apache2 status > /dev/null
STATUS=$?
if [ $STATUS -eq 0 ]; then
    service apache2 stop
fi
# note: stopping mysql is not mandatory, we do it to save on resources
service mysql status > /dev/null
STATUS=$?
if [ $STATUS -eq 0 ]; then
    service mysql stop
fi

cd $DIR

git checkout master
git pull
php stack.php build
php stack.php run

echo
echo "To continue: log on to http://deploy.websc/, http://deploy.websc/ezdeploy_site_admin, http://deploy.websc:88"
echo "or execute 'docker exec -ti ezdeploy_cli su site'"
