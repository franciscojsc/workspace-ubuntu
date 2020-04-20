#!/bin/bash

# Update repository
sudo apt-get update

# Install my softwares
SOFTWARE_TO_INSTALL=$(cat ./softwares/software.txt)

for software in ${SOFTWARE_TO_INSTALL[@]}; do
    sudo apt-get -y install $software
done

# Remove apport
sudo apt-get -y remove apport apport-gtk