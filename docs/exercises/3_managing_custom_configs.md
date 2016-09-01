Exercise 3: Managing custom config files
========================================

Goal of the exercise: create separate Apache configuration files for the 'uat' and 'dev' environments
and deploy them on the 'uat' docker stack.

Prerequisites: having created the 'uat' docker stack (exercise 1); having it running

## Task 1: create separate .htaccess files for 'dev' and 'uat'

    cd /var/www/summercamp/workshops/deploy_qa

    cd site/ezpublish/env_files
    mkdir -p uat/web
    cp dev/web/* uat/web
    cp dev/web/.htaccess uat/web
    sed -i 's/ENVIRONMENT=dev/ENVIRONMENT=uat/g' uat/web/.htaccess
    sed -i 's/ENVIRONMENT=uat/ENVIRONMENT=dev/g' dev/web/.htaccess

### Deploy them

    NB: this has to be done *from within the cli container*
    docker exec -ti ezdeploy_cli su site
    
    # (in the container)
        # deploy the config files
        php bin/ezp5installer.php misc-files:install -o ezpublish/env_files
        # check that they have been deployed
        ls -la web
        # exit the container
        exit

Then check that it is working: browse to

http://deploy.websc/

and check that the Symfony environment in use is the desired one
