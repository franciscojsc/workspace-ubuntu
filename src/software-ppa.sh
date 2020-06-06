#!/bin/bash

# Softwares ppa

# Install Peek
sudo add-apt-repository --yes ppa:peek-developers/stable
sudo apt-get update 
sudo apt-get -y install peek

# Install VeraCrypt
sudo add-apt-repository --yes ppa:unit193/encryption
sudo apt-get update
sudo apt-get -y install veracrypt

# VirtualBox
sudo echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-6.1