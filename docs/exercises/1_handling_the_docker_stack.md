Exercise 1: handling the Docker stack
=====================================

Goals of the exercise:
- getting acquainted with the Docker stack for eZPublish
- learning how to deploy a copy of the stack to create a new environment: `uat`


Prerequisite (optional): stop services on the VM which will not be used during the workshop

    sudo service mysql stop
    sudo service cups stop
    sudo service cups-browsed stop
    sudo service php5.6-fpm stop
    sudo service php7.0-fpm stop


## Task 1: Start the Docker stack and check that it is working

There are 3 cases, depending on the status of the VM:

### If you had finished setting up the VM by running suspend.sh:

    cd /var/www/summercamp/workshops/deploy
    git checkout master
    git pull
    ./installation/resume.sh

### If you are running the copy of the VM from a pendrive:

    cd /var/www/summercamp/workshops/deploy
    git checkout master
    git pull
    php stack.php build
    php stack.php run

### If you had never run the installation script of the workshop:

    cd /var/www/summercamp/workshops/deploy
    git checkout master
    git pull
    ./installation/provision.sh

Check that the stack is running:

    php stack.php ps

Browse to:

    http://deploy.websc:88
    http://deploy.websc
    http://deploy.websc/ezdeploy_site_admin

note: credentials for the admin interface are: admin/publish

Question: which Symfony environment is being used?

## Task 2: Create a copy of the stack, to handle a new environment: UAT

### Create a copy of the stack

    cd /var/www/summercamp/workshops/deploy
    php stack.php stop
    cd ..
    cp -R deploy/ deploy_qa

### Set the new stack to use a different Symfony environment

    cd deploy_qa
    printf "\nSYMFONY_ENV_NOVARNISH=uat\n" >> docker-compose.env.local
    printf "\nSYMFONY_ENV=uat\n" >> docker-compose.env.local

Optional: give the stack a different name, to avoid confusion

    sed -i 's/COMPOSE_PROJECT_NAME=ezdeploy/COMPOSE_PROJECT_NAME=ezdeployqa/g' docker-compose.conf.sh

### (Re)build and start the stack

    php stack.php build
    php stack.php run

Check that it is working:

  http://deploy.websc:88 => it should mention `uat`

### Fix .htaccess configuration to tell Symfony the name of the environment.

NB: this has to be done *from within the cli container*

    docker exec -ti ezdeploy_cli su site
    
    # (in the container)
        # edit line 22, replace 'dev' by 'uat'
        sed -i 's/ENVIRONMENT=dev/ENVIRONMENT=uat/g' web/.htaccess
        # exit the container
        exit

Test access to http://deploy.websc/

What has happened ?

### Set up eZPublish configuration files for the 'uat' environment

    # copy the config files from the 'dev' (or 'demo') environment
    cd site/ezpublish/config
    cp config_dev.yml config_uat.yml
    cp ezpublish_dev.yml ezpublish_uat.yml
    cp parameters_demo.yml parameters_uat.yml
    cp routing_demo.yml routing_uat.yml

    # patch them
    sed -i 's/parameters_dev.yml/parameters_uat.yml/g' config_uat.yml
    sed -i 's/routing_dev/routing_uat/g' config_uat.yml
    sed -i 's/web_profiler:/#web_profiler:/g' config_uat.yml
    sed -i 's/    toolbar:/# toolbar:/g' config_uat.yml
    sed -i 's/    intercept_redirects:/#    intercept_redirects:/g' config_uat.yml
