#!/bin/bash

# Install app snap
if [ -z $(which snap) ]
then
    sudo apt-get -y install snapd
    sudo systemctl stop snapd.service
    sudo systemctl start snapd.service
fi

sleep 3

SOFTWARE_TO_INSTALL_SNAP_CLASSIC=$(cat ./softwares/software-snap-classic.txt)

for software in ${SOFTWARE_TO_INSTALL_SNAP_CLASSIC[@]}; do
    if [ -z $(which ${software}) ]
    then
        sudo snap install $software --classic
    fi
done

SOFTWARE_TO_INSTALL_SNAP=$(cat ./softwares/software-snap.txt)

for software in ${SOFTWARE_TO_INSTALL_SNAP[@]}; do
    if [ -z $(which ${software}) ]
    then
        sudo snap install $software
    fi
done
