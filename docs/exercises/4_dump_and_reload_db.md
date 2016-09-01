Exercise 4: create the 'uat' database
=====================================

Goal of the exercise: exported the contents and binaries from the 'dev' environment and import them into
the 'uat' environment.

Prerequisites: having created the 'uat' docker stack (exercise 1); having it running


## Task 1: dump database and binaries on 'dev'

    cd /var/www/summercamp/workshops/deploy_qa
    php stack.php stop
    
    cd /var/www/summercamp/workshops/deploy
    php stack.php run

Optional: log in to the admin interface and change the name of a content, to be verify later on 'uat'
    
    docker exec -ti ezdeploy_cli su site
        NB: this has to be done *from within the cli container*
        ./bin/dumpdb.sh
        # check the results
        ls -la ezpublish/data/db
        ls -la ezpublish/data/storage
        # exit the container
        exit

    php stack.php stop

## Task 2: import database and binaries on 'uat'

    cp /var/www/summercamp/workshops/deploy/site/ezpublish/data/db/dev.sql \
        /var/www/summercamp/workshops/deploy_qa/site/ezpublish/data/db/uat.sql
    cp /var/www/summercamp/workshops/deploy/site/ezpublish/data/storage/files_dev.tgz \
        /var/www/summercamp/workshops/deploy_qa/site/ezpublish/data/storage/files_uat.tgz
    cp /var/www/summercamp/workshops/deploy/site/ezpublish/data/storage/images_dev.tgz \
        /var/www/summercamp/workshops/deploy_qa/site/ezpublish/data/storage/images_uat.tgz

    cd /var/www/summercamp/workshops/deploy_qa
    php stack.php run

    docker exec -ti ezdeploy_cli su site
        NB: this has to be done *from within the cli container*
        ./bin/importdb.sh
        # exit the container
        exit

Optional: log in to the admin interface and check that the changes are indeed present 
