Exercise 5: use database migrations
===================================

Goal of the exercise: learn how to use Migrations to manage changes to the content structure.

Prerequisites: having created the 'uat' docker stack (exercise 1); having it running

## Task 1: add an attribute of type 'image' to the 'article' class

    cd /var/www/summercamp/workshops/deploy_qa
    docker exec -ti ezdeploy_cli su site
        NB: this has to be done *from within the cli container*
        php ezpublish/console kaliop:migration:generate WebSCSampleBundle

Take a look at the name of the generated file, and edit it (either from the container, or outside of it).
Replace the contents with the following YML (take care about indentation):

    -
        mode: update
        type: content_type
        identifier: folder
        attributes:
            -
                identifier: image
                type: ezimage
                name: Image
            description: Just an Image

Execute the migration: from within the cli container

     php ezpublish/console kaliop:migration:migrate

Connect to http://deploy.websc/ezdeploy_site_admin and check that the Folder class has been modified
