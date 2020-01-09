#!/bin/bash

# Install app snap
sudo apt-get -y install snapd
sudo systemctl stop snapd.service
sudo systemctl start snapd.service

sleep 3

SOFTWARE_TO_INSTALL_SNAP_CLASSIC=('android-studio'
                                'eclipse'
                                'netbeans'
                                'code'
                                'pycharm-community')

for software in ${SOFTWARE_TO_INSTALL_SNAP_CLASSIC[@]}; do
    sudo snap install $software --classic
done

SOFTWARE_TO_INSTALL_SNAP=('gitkraken'
                        'dbeaver-ce'
                        'doctl'
                        'inkscape'
                        'gimp'
                        'polar-bookshelf'
                        'buka'
                        'vlc'
                        'kdenlive'
                        'obs-studio'
                        'audacity'
                        'telegram-desktop'
                        'ktouch')


for software in ${SOFTWARE_TO_INSTALL_SNAP[@]}; do
    sudo snap install $software
done