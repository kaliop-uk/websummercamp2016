FROM ubuntu:15.10
MAINTAINER Kaliop

# Configure timezone
# -----------------------------------------------------------------------------
RUN echo "Europe/Zagreb" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nodejs nodejs-legacy npm

#RUN mkdir -p /app/bin \
#    && git clone https://github.com/djfarrelly/MailDev.git /app/bin/maildev

RUN npm install -g maildev

EXPOSE 80 25
ENTRYPOINT ["maildev", "--web", "80", "--smtp", "25"]
