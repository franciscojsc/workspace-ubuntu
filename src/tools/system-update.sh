#!/bin/bash

sudo apt-get update > /dev/null 2>&1 &
sudo apt-get -y dist-upgrade > /dev/null 2>&1 &
sudo apt-get -y clean > /dev/null 2>&1 &
sudo apt-get -y autoremove > /dev/null 2>&1 &
sudo apt-get -y autoclean > /dev/null 2>&1 &
sudo dpkg --configure -a > /dev/null 2>&1 &
