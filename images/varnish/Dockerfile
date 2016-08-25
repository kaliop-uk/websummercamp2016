FROM ubuntu:15.10
MAINTAINER Kaliop
LABEL varnish.version=4.0

# Configure timezone
# -----------------------------------------------------------------------------
RUN echo "Europe/Zagreb" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

# Base packages
# @todo remove all the non-mandatory ones: procps, net-tools ?
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apt-transport-https \
    curl \
    procps \
    net-tools;

# Varnish
# -----------------------------------------------------------------------------
RUN curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add - && \
    echo "deb http://repo.varnish-cache.org/debian/ jessie varnish-4.0" >> /etc/apt/sources.list && \
    #echo "deb-src http://repo.varnish-cache.org/debian/ wheezy varnish-3.0" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y varnish varnish-agent;

# the /etc/varnish/default.vcl file is now mounted from a volume
RUN mv /etc/varnish/default.vcl /etc/varnish/default.vcl.ori
#COPY varnish/config_ez54_local.vcl /etc/varnish/default.vcl
COPY varnish/default/varnish /etc/default/varnish
COPY varnish/default/varnishncsa /etc/default/varnishncsa

RUN echo "varnish:CacheMeIfYouCan" > /etc/varnish/agent_secret

# Is this needed at all, since we mount it as volume?
#RUN mkdir /var/log/varnish && chmod 777 -R /var/log/varnish

# -----------------------------------------------------------------------------

# Clear archives in apt cache folder
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY bootstrap.sh /root/bootstrap.sh
RUN chmod 755 /root/bootstrap.sh

EXPOSE 80
EXPOSE 6082

#WORKDIR /logs

CMD ["/root/bootstrap.sh"]
