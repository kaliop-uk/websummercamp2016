eZ Publish 5: from zero to automated deployment (and no regressions!) in one afternoon
======================================================================================

This repository contains the source code for the workshop of the same name at the Web Summer Camp 2016.

It consists of:

- all the ingredients to build and run a set of Docker containers, tuned for an eZPublish 5 website requirements
   (mysq db, apache webserver, nginx and varnish proxies, solr and memcached, plus some dev helpers)

- the source code of an eZPublish 5 website installation, based on the 'ezdemo' look and feel. The kernel version
  in use is netgen/ezpublish-kernel:14.12

It should reasonably run on any platform where Docker is available.


## Getting started (on the Summercamp VM)

**IMPORTANT**

The default VM for the summer camp, available at http://netgen-cdn.r.worldssl.net/websc2016.ova, does not contain
a ready-made setup of this repository, for reasons of space saving.

All participants to the workshop are expected to execute the following setup procedure *before* the start of the
workshop, to avoid loosing time and clogging the hotel wifi.

- please make sure you have enough free disk space available on the host computer. The size of the VM will increase
  *A LOT*, up to 20GB total

- please make sure you have a decent internet connection, as there will be a good amount of downloading going on

- please make sure you have enough time and battery. The initial setup is expected to take at least 20 minutes

### Set up

- (optional) run the script `installation/preparevm.sh` if you prefer to use the Summercamp VM via samba and ssh
  instead of via the Ubuntu GUI

- make sure you have the latest version of this repository:

        cd /var/www/summercamp/workshops/deploy
        git checkout master
        git pull

- run the provisioning script:

        ./installation/provision.sh

- if all is well, you should be able to access the website at the following addresses:

    http://deploy.websc:88
    http://deploy.websc
    http://deploy.websc/ezdeploy_site_admin

- if things are not ok, you can check the status of the Docker containers using

        php stack.php ps

- at this point, if you have to attend other workshops before this one, you should stop the stack of Docker containers
  and bring back up the Apache and MySql services on the host computer

        ./installation/suspend.sh

  when this workshop will start, all you have to do is start the stack of Docker containers

        ./installation/resume.sh


## Getting started (on another VM or host computer)

### Requirements

* Docker 1.10 or later
* Docker Compose 1.7.0 or later
* PHP cli 5.3 or later
* Ports 80, 88, 443, 8080, 8081 free
* Ability to edit the host machine hosts file (or set up a DNS)
* 4GB of RAM or more recommended
* Lots of disk space and a decent internet connection

### Set up

    cd <some workspace directory>
    git clone https://github.com/kaliop-uk/websummercamp2016.git
    git pull
    ./installation/provision.sh

Then edit the hosts file and add an entry pointing to your host computer/VM IP with the name:

    deploy.websc


## Exercises

After you have set up the VM: head on to the (Exercises docs)[docs/Readme_Exercises.md]
