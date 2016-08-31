eZPublish Development Environment on Docker
===========================================

This repository contains all the Docker images and build files needed to create and use a Development Environment; it
works for a staging/uat environment as well.

It is to be used in conjunction with another repository which will contain the Application source code.
The Application source code should be installed in the 'site' directory within the Development Environment root directory;

for ease of usage during the Web Summer Camp workshop, the application source code has been committed to the same
git repository, in the 'site' directory.


## System Requirements

The development environment is based on Docker containers and requires:

* Docker 1.10 or later
* Docker Compose 1.7.0 or later
* PHP cli 5.3 or later

*IMPORTANT* make sure your installed versions of Docker and Docker Compose are not older than the required ones!

For MacOSX and Windows users, the recommended setup is to use a Debian or Ubuntu VM as host for the containers
(remember to make the current user a member of 'docker' group).
NB: give *at least* 2GB of RAM to the host VM, as it is necessary when running Composer...

The following ports have to be *not in use* on the host machine:

* 80    website
* 88    a handy control-panel
* 443   website via Nginx+Varnish (https)
* 8080  website via Varnish
* 8081  website via Nginx+Varnish (http) - *note* currently disabled
* 3307  mysql


## How it works

The environment is split into containers which execute each one of the main services.

All containers are built from the Ubuntu 15.10 official docker image to minimize the size of the image when
installed in the Summer Camp VM.

The following data is stored on the host machine (and mounted as volumes in the containers):

* configuration of the services running in each container: /config/...
* the Mysql data files and Solr index: /data/...
* the Apache, Php, Mysql, Nginx and Solr log files: /logs/...
* the application source code: /site/...

Here is how the containers listening ports are set up (related to web access only):

    +---------------------------------------------+
    |                                             |
    | +-----+ +-------+ +------+ +-----+ +------+ |
    | |     | |       | |      | |     | |      | |
    | | web | | mysql | | memc | | cli | | solr | |
    | |     | |       | |      | |     | |      | |
    | ++---++ +-------+ +------+ +-----+ +-----++ |
    |  |   |                                   |  |
    |  80  8080              \|/   \|/            |
    |  |    |                 |     |             |
    |  |    V                 |     V             |
    |  |   ++--------+        |   +-+------+      |
    |  |   |         |        |   |        |      |
    |  |   | varnish |        |   | tools* |      |
    |  |   |         |        |   |        |      |
    |  |   +--+------+        |   ++-------+      |
    |  |      |               |    |              |
    |  |      80+--+          |    |              |
    |  |      |    V          V    V              |
    |  |      |   ++------+  ++-------+           |
    |  |      |   |       |  |        |           |
    |  |      |   | nginx |  | cpanel |           |
    |  |      |   |       |  |        |           |
    |  |      |   ++-----++  ++-------+           |
    |  |      |    |     |    |                   |
    |  |      |    443   80   88                  |
    |  |      |    |     |    |                   |
    |  V      V    V     V    V                   |
    +--+------+----+-----+----+-------------------+
       |      |    |     |    |
       V      V    V     V    V
       80     8080 443   8081 88


*NB:* if you have never used Docker before, getting a basic knowledge of the commands used to start/stop/attach-to containers
might be a good idea.
There are plenty of tutorials available on the internet. This is a good quickstart: https://docs.docker.com/engine/userguide/basics/


## Setting up the Environment (for 1st time execution)

1. Install Docker and Docker Compose

    Follow the instructions appropriate to your OS.

    F.e. for Ubuntu linux:

    [https://docs.docker.com/engine/installation/ubuntulinux/](https://docs.docker.com/engine/installation/ubuntulinux/)
    [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

2. SSH Agent

    Your local ssh-agent is forwarded to the cli container when running. This way the ssh private keys stored in the host
    machine will be made available inside the container, making it easy to connect to the stash repository and other
    remote servers via ssh.

    To make sure your ssh-agent is running, run:

        ssh-add -L

    If you get an error, you can start it manually:

        eval `ssh-agent -s`

    To have ssh-agent automatically launched every time you log on, add this line to your ~/.profile file on the host machine:

        [ -z "$SSH_AUTH_SOCK" ] && eval `ssh-agent -s`

3. Clone the Environment Repository

    All the files needed to get the environment going are located in this repository with the exception of the app codebase,
    which is stored in another repository and will have to be installed separately once the environment is configured.

    To get the required files onto the host machine simply clone this repo into a local folder:

        git clone ssh://git@stash.kaliop.net:7999/wrbm/wrbm-cis-docker.git /path/to/your/project/folder

4. Configure the Environment Settings

    * Create a configuration file docker-compose.env.local:

             touch docker-compose.env.local
    
        That file will not be committed to the git repo, and as such can vary for each developer.
    
        Note that all the required environment variables are already set in [docker-compose.env](docker-compose.env), only
        set in  `docker.compose.env.local` the value of any that you need to change.
    
        * If the user-id and group-id you use on the host machine are not 1000:1000, please do set them up in `docker.compose.env.local`.
            This will help with avoiding filesystem permissions later on with the web server container mount points.
            To find out the id of the current user/group on the host machine, execute the `id` command.
    
        * The MySQL settings are already configured in the eZ Publish environment and on first run an empty database will be
            created ready for you to import the required data as outlined in the setup instructions in the eZPublish repository.
    
        You should not have to update any of the other settings in this file.

5. make sure that the logs/* and data/* subfolders can be written to.

    Some of the containers (currently this includes varnish and mysql) will write log files and data files to those
    directories on the host using a different user/group than the one you are using. You have to make sure that those
    files can be written. In doubt, run:

        find ./config -type d -exec chmod 777 {} \; && find ./data -type d -exec chmod 777 {} \;

6. Build the Environment Images

    To build all images, run:

        ./stack.php build

    (if you get an error that stack.php is not executable, run `php stack.php build`)

    Note: if you ever want to rebuild the whole platform *from scratch*, making sure that there are no cached container
    images involved, the command to use is: `docker-compose build --force-rm --no-cache`.

    Note: if there are error messages during the build about ubuntu repositories not being accessible or other network
    related errors, and the host is an Ubuntu machine, take a look at this page:
    http://serverfault.com/questions/642981/docker-containers-cant-resolve-dns-on-ubuntu-14-04-desktop-host

    Note: if the build gets stuck while installing java in the solr container, take a look at:
    https://github.com/docker/docker/issues/18180#issuecomment-179002757.
    If you are running in virtualbox, setting your vcpu count to 2 might fix the problem...

7. Set up the Application

    Follow the instructions in the Readme file of the application (*nb:* you will most likely have to start the
    containers for that, please read below for instructions)


## Starting the Environment

A script is available to run the environment.

The script will perform the following operations:

1. Stop all running docker containers
2. Start Docker Compose which will start all the containers.

Before running the environment for the first time please verify that the settings are correct for your user and group
ids.

To start the run script navigate to the project folder and run:

    ./stack.php run

Note: if you get an error that stack.php is not executable, run `php stack.php run`
Note: if you get an error about SSH_AUTH_SOCK, see point 2 above
Note: if any of the images fails to start, check the logs via  `docker logs <image_name>` or `docker-compose logs` to
see all logs


## Updating the Environment

To pull in the latest changes and restart all the containers, just run:

    ./stack.php update

*NB:* this will apply any changes coming from the git repository which contains the definition of the stack, but it
will not update the base Docker images in use. If the base images have been updated, because of eg. known security
vulnerabilities, it is recommended to rebuild all the containers by stopping them and the running:

    docker-compose build --pull

Note that this might take a while and need a lot of disk space. Remove unused container images to free some space.


## Accessing the application

### Control panel

You can connect to a handy control panel using the IP address of the host machine, on port 88:

http://ip-of-the-host:88

### Websites

The main website responds on the IP address of the host machine:

http://ip-of-the-host

https://ip-of-the-host

To use hostname-based vhosts, you should edit the local hosts file of the computer you are using.
All hostnames used to point to that IP address will trigger the same Apache Vhost.

### Shell connections (for running composer-install, git pull, connecting to mysql etc...)

    docker exec -ti kukcw_cli su site

Note: by default you will be using the 'dev' Symfony environment. To change it, reset the SYMFONY_ENV environment
variable (the default is taken from file docker-compose.env)


## Stopping the Environment

    ./stack.php stop


## Extras

### Connecting to a running container (run a shell session)

List the Ids of all running containers:

    ./stack.php ps

Note down id of the container you want to connect to, then run:

    docker exec -it <container-name> bash

Note: do *not* use `docker run` to attach to an existing container, as that will in fact spawn a new container.

Note: to connect to the web or cli containers, use `su site` instead of `bash`

### Checking the status of all existing containers (not only the active ones)

    docker ps -a

### Fixing user permissions

If you connect to the web container to execute commands such as `git pull` or `composer update`, take care: by default
you will be connecting as the root user. Any files written by the root user might be problematic because they will not
be modifiable by the apache webserver user.
Is is thus a better idea to connect to the web server container as the *site* user (used to run apache).

If you have problems with user permissions, just run `sudo chmod -R <localuser>:<localgroup> site` on the host machine,
with the appropriate ids for localuser and localgroup.

### Removing a local image

In case things are horribly wrong:

    docker ps -a
    docker rm <id of the container>
    docker rmi <id of the image>

### Cleaning up orphaned images from your hard disk

Note that when you delete images used by containers, as shown above, you will not be deleting all docker image layers
from your hard disk. To check it out, just run `docker images`...

The best tool we found so far to really clean up leftover image layers is: https://github.com/spotify/docker-gc

### Building individual images

From time to time you may need to rebuild an individual image because there has been an update to the image definition.

First make sure to pull the latest version of the repository. Navigate into the project folder and run a git pull.

    git pull origin master

To rebuild a specific image simply run docker-compose using the image 'service name', e.g.

    docker-compose build cli

Note: the phpmyadmin and dockerui images do not need a rebuild build phase. It you remove them (see chapter above), and
run the `stack.php run` command, they will be re-pulled automatically then executed.

### MySQL

This container is forked from the official MySQL container on DockerHub and only minimally tweaked.
You should not need to change anything with this container.

The connection details for the database root user and application user can be found in the docker-compose.env file.

The database data files are stored locally in [data/mysql](data/mysql). You do not need to put anything in there, as
they will be created the first time the container is run, and be persisted when it is shut down.
Otoh the created database will be empty, and you will need to fill it up with application data using some SQL or other
script which will be provided as part of the Application.

### Connecting to the database from the host machine

Connecting to the db from the host machine is possible. Just remember that:
to connect to the MySQL server from the host machine, use a command akin to `mysql -u<user> -p<password> -h127.0.0.2 -P3307`
(this way the mysql client will not try to use a unix-socket connection, as it does when using localhost/127.0.0.1)

### Docker build hangs when installing java certificates

See https://github.com/docker/docker/issues/18180#issuecomment-179002757

### Security considerations

If you are exposing the container stack to the internet, be advised that there are no Debian package updates that will
get applied automatically. Unless you update both your host OS and the containers, after a while your platform will
become a security liability.
To update the containers, simply running `apt-get upgrade` inside them does not work.
The correct way to update the stack involves rebuilding all the containers from an updated base image, and it comes
with some downtime - most likely half an hour or more.
The exact command to be executed is detailed in the section 'Updating the Environment' above.
