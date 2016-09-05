Exercise 2: managing legacy settings
====================================

Goal of the exercise: create a set of settings for eZPublish Legacy for the 'uat' environment
and deploy them on the 'uat' docker stack.

Prerequisites: having created the 'uat' docker stack (exercise 1); having it running

## Task 1: disable the debug mode for the Admin interface in the UAT environment

    cd /var/www/summercamp/workshops/deploy_qa

### Create the per-environment config files (hint: debug mode is set in site.ini)

    cd site/ezpublish/legacy_settings
    mkdir -p dev/override
    mkdir -p uat/override
    mv common/override/site.ini.append.php dev/override
    cp dev/override/site.ini.append.php uat/override/site.ini.append.php
    sed -i 's/DebugOutput=enabled/DebugOutput=disabled/g' uat/override/site.ini.append.php

### Deploy them

    NB: this has to be done *from within the cli container*
    docker exec -ti ezdeployqa_cli su site
    
    # (in the container)
        # deploy the settings
        php bin/ezp5installer.php legacy-settings:install --clean
        # check that they have been deployed
        ls -la settings/override
        # clear cache (optional)
        rm -rf ezpublish_legacy/var/cache/*
        rm -rf ezpublish_legacy/var/ezdemo_site/cache/*
        # exit the container
        exit

Then check that it is working: browse to

http://deploy.websc/ezdeploy_site_admin

note: credentials for the admin interface are: admin/publish
