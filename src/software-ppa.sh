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