FROM ubuntu:15.10
MAINTAINER Kaliop
LABEL php.version=5.6.11

# Configure timezone
# -----------------------------------------------------------------------------
RUN echo "Europe/Zagreb" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

# Base packages
# @todo remove any unneeded ones: openssl ?
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    locales \
    pwgen \
    imagemagick \
    cron \
    openssl \
    curl \
    git \
    vim \
    iputils-ping;

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

# Local user
# @todo simplify this as much as possible
# -----------------------------------------------------------------------------
COPY profile /tmp/profile
# nb: the 1013 used here for user id and group id is later on replaced by the code in bootstrap.sh...
# q: why not use useradd and groupadd commands which can do more in one line?
RUN addgroup --gid 1013 site && \
    adduser --system --uid=1013 --gid=1013 \
        --home /home/site --shell /bin/bash site && \
    adduser site site && \
#    adduser site rvm && \
    adduser site sudo; \
    sed -i '$ a site   ALL=\(ALL:ALL\) NOPASSWD: ALL' /etc/sudoers; \
    cp /etc/skel/.* /home/site/; \
    mkdir -p /home/site/.ssh; \
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o /home/site/.git-completion.bash; \
    curl -o /home/site/.git-prompt.sh -OL https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh; \
    cat /tmp/profile/.bashrc_append >> /home/site/.bashrc; \
    cp /tmp/profile/.gitconfig /home/site/; \
    chown -R site:site /home/site;

# PHP
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    php5-cli \
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

# PHP config - kept in a volume
# -----------------------------------------------------------------------------
# no xdebug :-)
RUN rm /etc/php5/cli/conf.d/20-xdebug.ini

# Composer global install
# @todo the github oauth token should be saved in docker-compose.env...
# -----------------------------------------------------------------------------
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin && \
    mv /usr/local/bin/composer.phar /usr/local/bin/composer && \
    chmod 755 /usr/local/bin/composer && \
    mkdir -p /home/site/.composer && \
    chown -R site:site /home/site/.composer

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

# Mysql client, useful for db dumps and such
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-client

# Misc - prime known_hosts file for 'site' user
# -----------------------------------------------------------------------------
RUN echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config;
RUN su site -c 'ssh stash.kaliop.net -p 7999; echo "Note: the above error is accounted for"'

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
# -----------------------------------------------------------------------------
#RUN apt-get update && \
#    apt-get install -y \
#    npm && \
#    ln -s /usr/bin/nodejs /usr/bin/node && \
#    npm install -g bower grunt-cli

# -----------------------------------------------------------------------------

# Drush - moved to composer install within the app
# -----------------------------------------------------------------------------
#RUN git clone --depth 1 https://github.com/drush-ops/drush.git /usr/local/src/drush && \
#    ln -s /usr/local/src/drush/drush /usr/local/bin/drush && \
#    cd /usr/local/src/drush && composer install

# Clear archives in apt cache folder
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY bootstrap.sh /root/bootstrap.sh
RUN chmod 755 /root/bootstrap.sh

WORKDIR /var/www/site

CMD ["/root/bootstrap.sh"]
