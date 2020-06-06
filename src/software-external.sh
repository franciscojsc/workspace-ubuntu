#!/bin/bash

# Softwares download external

DIR_TEMP=$(mktemp -d)
cd $DIR_TEMP

# Google Chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# flameshot
wget -c https://github.com/lupoDharkael/flameshot/releases/download/v0.6.0/flameshot_0.6.0_xenial_x86_64.deb

# Dropbox
wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb

# Astah UML Community
# wget -c http://cdn.change-vision.com/files/astah-community_7.2.0.1ff236-0_all.deb

# Install package .deb
sudo dpkg --add-architecture i386
sudo dpkg -i *.deb
sudo dpkg --configure -a 
sudo updatedb
sudo apt-get -y -f install

cd -