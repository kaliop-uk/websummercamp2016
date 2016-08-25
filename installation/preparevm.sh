#!/usr/bin/env bash

### Add the (possibly) missing bts to the Netgen VM so that it can be accessed from the host machine

# ssh

sudo apt-get install -y -qq openssh-server samba

# firewall

sudo ufw disable

# samba

sudo cat <<EOT >> /etc/samba/smb.cfg

[www]
    path = /var/www
    browseable = yes
    read only = no
    force user = user
    force group = www-data
    create mask = 0664
    follow symlinks = yes
    wide links = yes

EOT

sudo echo -ne "websc\nwebsc\n" | smbpasswd -a -s nwebsc

sudo service smbd restart
