#!/bin/bash

# Install oh-my-zsh
sudo curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

# Install docker
sudo curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER 

# Install NVM
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash