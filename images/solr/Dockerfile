FROM ubuntu:15.10
MAINTAINER Kaliop
LABEL solr.version=4.10

# Configure timezone
# -----------------------------------------------------------------------------
RUN echo "Europe/Zagreb" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

# Base packages - JAVA 8 from Oracle
# -----------------------------------------------------------------------------
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qqy \
    oracle-java8-installer

# we do not install Solr any more by copy: we rely on the Solr from within eZP
#COPY ./solr_4.10 /opt/solr/app

COPY init/solr /etc/init.d/solr
RUN chmod 755 /etc/init.d/solr

# -----------------------------------------------------------------------------

# Clear archives in apt cache folder
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY bootstrap.sh /root/bootstrap.sh
RUN chmod 755 /root/bootstrap.sh

EXPOSE 8983

WORKDIR /opt/solr

CMD ["/root/bootstrap.sh"]
