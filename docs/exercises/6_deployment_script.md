Exercise 6: testing the deployment script
=========================================

Goal of the exercise: get comfortable with the automated deployment script.

Prerequisites: having created the 'uat' docker stack (exercise 1); having it running

## Task 1: run the deployment script

    cd /var/www/summercamp/workshops/deploy_qa
    
    NB: this has to be done *from within the cli container*
    docker exec -ti ezdeploy_cli su site
    
    # (in the container)
        ./bin/deploy.sh

Look at the output on screen and try to make sense of it
