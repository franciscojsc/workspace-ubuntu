#!/bin/bash

# Softwares ppa

# Install Peek
if [ -z $(which peek) ]
then
    sudo add-apt-repository --yes ppa:peek-developers/stable
    sudo apt-get update 
    sudo apt-get -y install peek
fi

# Install VeraCrypt
if [ -z $(which veracrypt) ]
then
    sudo add-apt-repository --yes ppa:unit193/encryption
    sudo apt-get update
    sudo apt-get -y install veracrypt
fi

# VirtualBox
if [ -z $(which virtualbox) ]
then
    sudo echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install -y virtualbox-6.1
fi
