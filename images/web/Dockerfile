FROM ubuntu:15.10
MAINTAINER Kaliop
LABEL apache.version=2.4.12 php.version=5.6.11

# Configure timezone
# -----------------------------------------------------------------------------
RUN echo "Europe/Zagreb" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

# Base packages
# @todo remove any unneeded ones
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    locales \
    pwgen \
    imagemagick \
    git \
    curl;

# Configure locale
# q: for what is the locale setup needed ?
# -----------------------------------------------------------------------------
RUN dpkg-reconfigure locales && \
    echo 'en_GB.UTF-8 UTF-8' >> /etc/locale.gen && \
    locale-gen en_GB.UTF-8 && \
    /usr/sbin/update-locale LANG=en_GB.UTF-8

ENV LC_ALL en_GB.UTF-8
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB.UTF-8

# Lamp stack
# @todo remove any unneeded ones: openssl ?
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    libapache2-mod-php5 \
    php5 \
    php5-curl \
    php5-gd \
    php5-imagick \
    php5-intl \
    php5-json \
    php5-ldap \
    php5-mcrypt \
    php5-memcached \
    php5-mysqlnd \
    php5-xdebug \
    php5-xmlrpc \
    php5-xsl

# Local user
# @todo simplify this as much as possible, or plain remove
# -----------------------------------------------------------------------------
# nb: the 1013 used here for user id and group id is later on replaced by the code in bootstrap.sh...
RUN addgroup --gid 1013 site && \
    adduser --system --uid=1013 --gid=1013 \
        --home /home/site --shell /bin/bash site && \
    adduser site site && \
#    adduser site rvm && \
    adduser site www-data; \
    cp /etc/skel/.* /home/site/; \
    mkdir -p /home/site/.ssh; \
    chown -R site:site /home/site;

# Apache config
# -----------------------------------------------------------------------------
ENV APACHE_RUN_USER site
ENV APACHE_RUN_GROUP site
ENV APACHE_LOG_DIR /var/log/apache2/sites
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR  /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

#RUN chown -R site:site /var/lock/apache2

RUN sed -rie 's|export APACHE_RUN_USER=.*|export APACHE_RUN_USER=site|g' /etc/apache2/envvars
RUN sed -rie 's|export APACHE_RUN_GROUP=.*|export APACHE_RUN_GROUP=site|g' /etc/apache2/envvars
RUN sed -rie 's|export APACHE_LOG_DIR=.*|export APACHE_LOG_DIR=/var/log/apache2|g' /etc/apache2/envvars

RUN rm /etc/apache2/ports.conf
COPY apache2/ports.conf /etc/apache2/ports.conf

#RUN printf "\n# Fix for Vagrant - Do not use this on production!\nEnableSendfile Off\n" >> /etc/apache2/apache2.conf

RUN a2enmod rewrite headers vhost_alias proxy_http proxy ssl info status

# vhost config
# controlpanel is burned into the container, while the sites-enabled dir is mounted as volume
COPY apache2/010-controlpanel.conf /tmp/010-controlpanel.conf
RUN cat /tmp/010-controlpanel.conf >> /etc/apache2/apache2.conf
RUN rm /tmp/010-controlpanel.conf
#COPY apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf
#COPY apache2/sites-available/010-controlpanel.conf /etc/apache2/sites-available/010-controlpanel.conf
COPY sites/controlpanel/ /var/www/controlpanel

# the sites do not exist here, as they come from mount points!
#RUN a2dissite 000-default
#RUN a2ensite 000-direct
#RUN a2ensite 001-proxied

# Java (used for eg. eZTika indexing)
# -----------------------------------------------------------------------------
#RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-7-jre-headless
# JAVA 8 from Oracle
# -----------------------------------------------------------------------------
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qqy \
    oracle-java8-installer

# in case the eZP legacy config has been generated on a Kaliop MTP computer, make this available as courtesy.
#RUN mkdir -p /opt/prod/ImageMagick/bin/; \
#    ln -s /usr/bin/convert /opt/prod/ImageMagick/bin/convert;

# RVM / Ruby / Gems / Bundler / Foundation
# Unused for this project
# -----------------------------------------------------------------------------
#RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
#    build-essential && \
#    \curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
#    \curl -sSL https://get.rvm.io | bash -s stable --ruby --with-default-gems="compass bundler"
#
#RUN echo "source /usr/local/rvm/scripts/rvm" >> /etc/bash.bashrc

# NodeJS / bower / grunt
# Unused for this project
# -----------------------------------------------------------------------------
#RUN apt-get update && \
#    apt-get install -y \
#    npm && \
#    ln -s /usr/bin/nodejs /usr/bin/node && \
#    npm install -g bower grunt-cli

# -----------------------------------------------------------------------------

# Clear archives in apt cache folder
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY bootstrap.sh /root/bootstrap.sh
RUN chmod 755 /root/bootstrap.sh

EXPOSE 80
EXPOSE 443
EXPOSE 8080

WORKDIR /var/www/site

CMD ["/root/bootstrap.sh"]
