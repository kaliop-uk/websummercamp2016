#!/usr/bin/env bash

# Suspend the docker stack and bring back the standard services

ID="$(id -u)"
if [ $ID -ne 0 ]; then
    echo "The script might ask you for your account password a couple of times, in order to stop running services"
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

cd $DIR

php stack.php stop

# note: we could find the process listening on ports 443 and 80 instead of just stopping Apache...
service apache2 status > /dev/null
STATUS=$?
if [ $STATUS -ne 0 ]; then
    service apache2 start
fi
# note: stopping mysql is not mandatory, we do it to save on resources
service apache2 status > /dev/null
STATUS=$?
if [ $STATUS -ne 0 ]; then
    service mysql start
fi
