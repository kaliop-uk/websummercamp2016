#!/bin/bash

# @todo use /bin/sh instead of /bin/bash

echo [`date`] Bootstrapping the CLI server...

function clean_up {
    # Perform program exit housekeeping
    exit
}

# Fix UID & GID for user 'site'

echo [`date`] Fixing filesystem permissions...

ORIGPASSWD=$(cat /etc/passwd | grep site)
ORIG_UID=$(echo "$ORIGPASSWD" | cut -f3 -d:)
ORIG_GID=$(echo "$ORIGPASSWD" | cut -f4 -d:)
ORIG_HOME=$(echo "$ORIGPASSWD" | cut -f6 -d:)
DEV_UID=${DEV_UID:=$ORIG_UID}
DEV_GID=${DEV_GID:=$ORIG_GID}

if [ "$DEV_UID" -ne "$ORIG_UID" ] || [ "$DEV_GID" -ne "$ORIG_GID" ]; then

    groupmod -g "$DEV_GID" site
    usermod -u "$DEV_UID" -g "$DEV_GID" site

    chown "${DEV_UID}":"${DEV_GID}" "${ORIG_HOME}"
    chown -R "${DEV_UID}":"${DEV_GID}" "${ORIG_HOME}"/.*

fi


echo [`date`] Setting composer github oauth...

# not the best solution in the world, as it prevents users to editing home/site/.composer/config.json, but can do for now
echo "{ \"config\": { \"github-oauth\": { \"github.com\": \"${GITHUB_OAUTH}\" } } }" > /home/site/.composer/config.json
chown site:site /home/site/.composer/config.json

echo [`date`] Installing crontabs...

# this env file can then be used by crontabs like this:
# * * * * * bash -c '. /home/site/.cron_env; env|sort >> /tmp/env.log' > /tmp/cron.log 2>&1
echo "export SYMFONY_ENV=$SYMFONY_ENV_CRONJOBS" > "$ORIG_HOME/.cron_env"

for user in `ls /tmp/cron.d`; do
    crontab -u "$user" "/tmp/cron.d/$user"
done

cron


echo [`date`] Bootstrap finished

trap clean_up SIGTERM

tail -f /dev/null &
child=$!
wait "$child"
