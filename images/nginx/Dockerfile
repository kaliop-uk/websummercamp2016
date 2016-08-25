FROM ubuntu:15.10
MAINTAINER Kaliop
LABEL nginx.version=1.2

# Configure timezone
# -----------------------------------------------------------------------------
RUN echo "Europe/Zagreb" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

# Base packages
# @todo remove all the non-mandatory ones: procps, net-tools ?
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
#    procps \
#    net-tools \
    curl \
    vim;

# Local user
# @todo simplify this as much as possible, or plain remove
# -----------------------------------------------------------------------------
# nb: the 1013 used here for user id and group id is later on replaced by the code in bootstrap.sh...
RUN addgroup --gid 1013 site && \
    adduser --system --uid=1013 --gid=1013 \
        --home /home/site --shell /bin/bash site && \
    adduser site site && \
    adduser site www-data && \
    mkdir -p /home/site/.ssh; \
    chown -R site:site /home/site;

# Nginx
# -----------------------------------------------------------------------------
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nginx;

RUN sed -rie 's|user www-data;|user site;|g' /etc/nginx/nginx.conf

# the sites-enabled dir is mounted as a volume
RUN rm /etc/nginx/sites-enabled/*

# controlpanel is burned into the container, while the sites-enabled dir is mounted as volume
COPY nginx/010-controlpanel.conf /etc/nginx/conf.d/010-controlpanel.conf
#RUN cat /tmp/010-controlpanel.conf >> /etc/nginx/nginx.conf
#RUN rm /tmp/010-controlpanel.conf

# -----------------------------------------------------------------------------

# Clear archives in apt cache folder
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY bootstrap.sh /root/bootstrap.sh
RUN chmod 755 /root/bootstrap.sh

EXPOSE 80
EXPOSE 443
EXPOSE 88

#WORKDIR /logs

CMD ["/root/bootstrap.sh"]
