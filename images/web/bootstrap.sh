#!/bin/bash

echo [`date`] Bootstrapping the Web server...

function clean_up {
    # Perform program exit housekeeping
    echo [`date`] Stopping the service...
    service apache2 stop
    exit
}

# Fix UID & GID for user 'site'
echo [`date`] Fixing filesystem permissions...

ORIGPASSWD=$(cat /etc/passwd | grep site)
ORIG_UID=$(echo $ORIGPASSWD | cut -f3 -d:)
ORIG_GID=$(echo $ORIGPASSWD | cut -f4 -d:)
ORIG_HOME=$(echo "$ORIGPASSWD" | cut -f6 -d:)
DEV_UID=${DEV_UID:=$ORIG_UID}
DEV_GID=${DEV_GID:=$ORIG_GID}

if [ "$DEV_UID" -ne "$ORIG_UID" ] || [ "$DEV_GID" -ne "$ORIG_GID" ]; then

    # note: we allow non-unique user and group ids...
    groupmod -o -g "$DEV_GID" site
    usermod -o -u "$DEV_UID" -g "$DEV_GID" site

    chown "${DEV_UID}":"${DEV_GID}" "${ORIG_HOME}"
    chown -R "${DEV_UID}":"${DEV_GID}" "${ORIG_HOME}"/.*

fi

chown -R site:site /var/lock/apache2

# Filesystem perms needed for Drupal... to be moved to a Drupal deployment script
chmod g+w /var/www/site/www/sites/default/files

echo [`date`] Modifying Apache configuration...

# This is a bit shaky: depending on the order of containers building, the varnish one might not be found...
# what's more, that one depends on the web container to be up to start. Inception!
SYMFONY_ENV_TRUSTEDPROXIES=$(ping -c1 -n varnish 2>/dev/null | head -n1 | sed "s/.*(\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\)).*/\1/g")
if [ "$SYMFONY_ENV_TRUSTEDPROXIES" = "" ]; then
    # @todo move this to a config var, as we currently get 172.21.0.6...
    SYMFONY_ENV_TRUSTEDPROXIES=172.18.0.0/24
fi

# @todo improve this: if the container is bootstrapped many times, the envvars file will keep growing
echo "# Config below added by bootstrap.sh" >> /etc/apache2/envvars
echo "export SYMFONY_ENV_NOVARNISH=$SYMFONY_ENV_NOVARNISH" >> /etc/apache2/envvars
echo "export SYMFONY_ENV_WITHVARNISH=$SYMFONY_ENV_WITHVARNISH" >> /etc/apache2/envvars
echo "export SYMFONY_ENV_TRUSTEDPROXIES=$SYMFONY_ENV_TRUSTEDPROXIES" >> /etc/apache2/envvars

a2dissite 000-default
# @todo loop on all files found in /etc/apache2/sites-available...
a2ensite 000-direct
a2ensite 001-proxied

# @todo we have to install the newrelic agent 1st...
#if [ "$USE_NEWRELIC" == 1  ] ; then
#    service newrelic-daemon restart
#else
#    service newrelic-daemon stop
#fi

echo [`date`] Starting the service...

trap clean_up SIGTERM

service apache2 restart

echo [`date`] Bootstrap finished

tail -f /dev/null &
child=$!
wait "$child"
