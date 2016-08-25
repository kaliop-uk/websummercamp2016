#!/bin/bash

echo  [`date`] Bootstrapping Varnish...

function clean_up {
    # Perform program exit housekeeping
    echo [`date`] Stopping the service
    service varnish stop
    exit
}

# Fix UID & GID for user 'varnishlog'
echo  [`date`] Fixing filesystem permissions...

ORIGPASSWD=$(cat /etc/passwd | grep varnishlog)
ORIG_UID=$(echo $ORIGPASSWD | cut -f3 -d:)
ORIG_GID=$(echo $ORIGPASSWD | cut -f4 -d:)
ORIG_HOME=$(echo "$ORIGPASSWD" | cut -f6 -d:)
DEV_UID=${DEV_UID:=$ORIG_UID}
DEV_GID=${DEV_GID:=$ORIG_GID}

if [ "$DEV_UID" -ne "$ORIG_UID" ] || [ "$DEV_GID" -ne "$ORIG_GID" ]; then

    # note: we allow non-unique user and group ids...
    groupmod -o -g "$DEV_GID" varnishlog
    usermod -o -u "$DEV_UID" -g "$DEV_GID" varnishlog

    # varnishlog user has no root dir created by default
    #chown "${DEV_UID}":"${DEV_GID}" "${ORIG_HOME}"
    #chown -R "${DEV_UID}":"${DEV_GID}" "${ORIG_HOME}"/.*

fi

echo [`date`] waiting for the web container to be available...

sleep 3

# Wait until the webserver is up, or varnish will not start
# @todo shall we exit the loop after a while?

curl http://web:88 >/dev/null 2>&1
while [ $? -ne 0 ]
do
    sleep 1
    curl http://web:88 >/dev/null 2>&1
done

echo [`date`] Starting the services...

trap clean_up SIGTERM

service varnish start

sleep 2

service varnishncsa start

varnish-agent

echo [`date`] Bootstrap finised

tail -f /dev/null &
child=$!
wait "$child"
