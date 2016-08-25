FROM mysql:5.6
MAINTAINER Kaliop
LABEL mysql.version=5.6

# Configure timezone
# -----------------------------------------------------------------------------
RUN echo "Europe/Zagreb" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

# Make the entrypoint a bit more friendly to debugging: keep it alive even if mysql fails starting
# NB: the container will still fail and suicide if there is an error in the part of entrypoint.sh which deals with
#     creation of the db
# NNB: doing this is BAD, as when docker stops the container, the db is shut down uncleanly and there is risk of
#      data corruption! THis is why our bootstrap.sh is nice and traps signals for a clean shutdown
### disabled as it does nto work any more... to be fixed
###RUN sed -i 's/exec "$@"/\/etc\/init.d\/mysql start/g' /entrypoint.sh
#RUN echo 'while true; do :; done' >> /entrypoint.sh

COPY bootstrap.sh /root/bootstrap.sh
RUN chmod 755 /root/bootstrap.sh

EXPOSE 3306

ENTRYPOINT []
CMD ["/root/bootstrap.sh", "mysqld"]
