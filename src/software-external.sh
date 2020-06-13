#!/bin/bash

# Softwares download external
installSoftwareExternal() {
    if [ ! -z $(which wget) ]
    then
        DIR_TEMP=$(mktemp -d)
        cd $DIR_TEMP

        # Google Chrome
        if [ -z $(which google-chrome) ]
        then
            wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        fi

        # flameshot
        if [ -z $(which flameshot) ]
        then
            wget -c https://github.com/lupoDharkael/flameshot/releases/download/v0.6.0/flameshot_0.6.0_xenial_x86_64.deb
        fi

        # Dropbox
        if [ -z $(which dropbox) ]
        then
            wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb
        fi

        # Enable support for 32-bit architecture
        sudo dpkg --add-architecture i386

        # Install package .deb
        if [ $(ls | wc -l) != 0 ]
        then
            sudo dpkg -i *.deb
            sudo dpkg --configure -a 
            sudo updatedb
            sudo apt-get -y -f install
        fi

        cd -
    else
        echo -e "${COLOR_WARNING} Install wget: ${COLOR_DEFAULT}"
        sudo apt-get -y wget
        installSoftwareExternal
    fi
}

installSoftwareExternal
