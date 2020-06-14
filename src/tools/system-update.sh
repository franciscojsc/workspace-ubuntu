#!/bin/bash

if [ -z $(sudo -v || echo "not-sudo") ]
then
    (sudo apt-get update && \
    sudo apt-get -y dist-upgrade && \
    sudo apt-get -y clean && \
    sudo apt-get -y autoremove && \
    sudo apt-get -y autoclean && \
    sudo dpkg --configure -a
    ) > /dev/null 2>&1 &
fi
