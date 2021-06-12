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

