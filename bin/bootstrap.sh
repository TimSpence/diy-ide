#!/usr/bin/env sh

######################################################################
# @author      : tim (tim@$HOSTNAME)
# @file        : bootstrap
# @created     : Saturday Jun 12, 2021 14:51:19 PDT
#
# @description : bootstrap and configure the vm
######################################################################

# link project inside home folder
if ! [ -L /home/vagrant/diy-ide ]; then
    ln -s /vagrant /home/vagrant/diy-ide
fi

# install asciinema if not already installed
type asciinema >/dev/null 2>&1 ||
    {
        export DEBIAN_FRONTEND=noninteractive
        apt-add-repository ppa:zanchey/asciinema
        apt update
        apt install -y asciinema

        mkdir -p /home/vagrant/.config/asciinema
        cat <<- EOF >> /home/vagrant/.config/asciinema/config
        [record]

        ; trim idle time down to 2 seconds
        idle_time_limit = 2

        [play]
        ; adjust playback speed
        speed = 2
EOF
        if [ ! -z $ASCIINEMA_INSTALL_ID ]; then
            printf "$ASCIINEMA_INSTALL_ID\n" > \
                /home/vagrant/.config/asciinema/install-id
        fi
        chown -R vagrant:vagrant /home/vagrant/.config
    }

