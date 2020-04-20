#!/bin/bash

# Install app snap
sudo apt-get -y install snapd
sudo systemctl stop snapd.service
sudo systemctl start snapd.service

sleep 3

SOFTWARE_TO_INSTALL_SNAP_CLASSIC=$(cat ./softwares/software-snap-classic.txt)

for software in ${SOFTWARE_TO_INSTALL_SNAP_CLASSIC[@]}; do
    sudo snap install $software --classic
done

SOFTWARE_TO_INSTALL_SNAP=$(cat ./softwares/software-snap.txt)

for software in ${SOFTWARE_TO_INSTALL_SNAP[@]}; do
    sudo snap install $software
done