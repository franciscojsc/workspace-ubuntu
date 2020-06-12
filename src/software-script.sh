#!/bin/bash

installSoftwareScript() {
    if [ ! -z $(which curl) ]
    then
        # Install oh-my-zsh
        if [ ! -d "$HOME/.oh-my-zsh" ]
        then
            if [ ! -z $(which git) ]
            then
                sudo curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
            else
                echo -e "${COLOR_WARNING} Install git: ${COLOR_DEFAULT}"
                sudo apt-get -y install git
                installSoftwareScript
            fi
        fi

        # Install NVM
        if [ ! -d "$HOME/.nvm" ]
        then
            sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
            # nvm install node
        fi

        # Install docker
        if [ -z $(which docker) ]
        then
            sudo curl -fsSL https://get.docker.com | bash
            sudo usermod -aG docker $USER
        fi
    else
        echo -e "${COLOR_WARNING} Install curl: ${COLOR_DEFAULT}"
        sudo apt-get -y install curl
        installSoftwareScript
    fi
}

installSoftwareScript
