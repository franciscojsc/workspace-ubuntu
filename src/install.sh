#!/bin/bash

# Init of Script
echo
echo "    __  __        __        __         _                             "
echo "   |  \/  |_   _  \ \      / /__  _ __| | _____ _ __   __ _  ___ ___ "
echo "   | |\/| | | | |  \ \ /\ / / _ \| '__| |/ / __| '_ \ / _\` |/ __/ _ \\"
echo "   | |  | | |_| |   \ V  V / (_) | |  |   <\__ \ |_) | (_| | (_|  __/"
echo "   |_|  |_|\__, |    \_/\_/ \___/|_|  |_|\_\___/ .__/ \__,_|\___\___|"
echo "           |___/                               |_|                   "
echo 

# Removing any apt locks
sudo rm /var/lib/dpkg/lock-frontend;
sudo rm /var/cache/apt/archives/lock;

# Check net
source ./check-net.sh

# Config directory
source ./directory.sh

# Softwares
source ./software.sh
source ./software-snap.sh
source ./software-script.sh
source ./software-ppa.sh
source ./software-external.sh

# Update system
sudo apt-get update &&
sudo apt-get -y dist-upgrade &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean &&
sudo apt-get -y autoremove

# Software list
source ./software-list.sh

# End of Script
echo
echo
echo "   ______ _       _     _              _ "
echo "  |  ____(_)     (_)   | |            | |"
echo "  | |__   _ _ __  _ ___| |__   ___  __| |"
echo "  |  __| | | '_ \| / __| '_ \ / _ \/ _\` |"
echo "  | |    | | | | | \__ \ | | |  __/ (_| |"
echo "  |_|    |_|_| |_|_|___/_| |_|\___|\__,_|"
echo
echo