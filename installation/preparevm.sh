#!/usr/bin/env bash

# Add the (possibly) missing bits to the VM prepared by Netgen so that it can be accessed from the host machine
#
# To be run as root

ID="$(id -u)"
if [ $ID -ne 0 ]; then
    echo "Please run this script as root"
    exit 1
fi

# ssh

apt-get install -y -qq openssh-server samba

# firewall

ufw disable

# samba

cat <<EOT >> /etc/samba/smb.conf

[www]
    path = /var/www
    browseable = yes
    read only = no
    force user = websc
    force group = websc
    create mask = 0664
    follow symlinks = yes
    wide links = yes

EOT

echo -ne "websc\nwebsc\n" | smbpasswd -a -s websc

service smbd restart

# disabling default starting into GUI mode:

# see http://ask.xmodulo.com/boot-into-command-line-ubuntu-debian.html

# Fix ls command not to use color

mv /usr/bin/dircolors /usr/bin/dircolors.disabled

# Fix prompt to be shorter (good for low-res projectors

cat <<'EOT' >> /home/websc/.bashrc

function pwdn {
    pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed 's/ /\//'
}
export PS1="\[\033[33m\]\$(pwdn 3)\[\033[0m\] \$ ";

EOT
