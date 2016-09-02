Exercise 7: adding tests
========================

Goal of the exercise: get comfortable with writing functional tests for an eZPublish website

Prerequisites:
- having created the 'uat' docker stack (exercise 1); having it running
- having run the migration to alter the 'article' class (exercise 6)

## Task 1: run a phpunit test to check if the migration was executed correctly

    cd /var/www/summercamp/workshops/deploy_qa
    docker exec -ti ezdeploy_cli su site
        NB: this has to be done *from within the cli container*
        ./bin/phpunit src/WebSC/SampleBundle/Tests/PHPUnit/

Question: what has just happened?
