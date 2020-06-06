#!/bin/bash

# Color
COLOR_DEFAULT="\033[0;0m"
COLOR_PRIMARY="\033[1;94m"
COLOR_SUCESS="\033[1;92m"
COLOR_DANGER="\033[1;31m"
COLOR_WARNING="\033[1;33m"


echo  -e "${COLOR_WARNING} --------------------------------------------"
echo
echo  -e "${COLOR_PRIMARY} ╦  ┬┌─┐┌┬┐  ┌─┐┌─┐  ┌─┐┬─┐┌─┐┌─┐┬─┐┌─┐┌┬┐┌─┐"
echo  -e "${COLOR_PRIMARY} ║  │└─┐ │   │ │├┤   ├─┘├┬┘│ ││ ┬├┬┘├─┤│││└─┐"
echo  -e "${COLOR_PRIMARY} ╩═╝┴└─┘ ┴   └─┘└    ┴  ┴└─└─┘└─┘┴└─┴ ┴┴ ┴└─┘"


SOFTWARE_LIST=$(cat ./softwares/software-list.txt)

for software in $SOFTWARE_LIST; do
    if [ -z $(which ${software}) ]
    then
        echo  -e "${COLOR_DANGER} ❌ ${COLOR_DEFAULT} ${software}"
    else
        echo  -e "${COLOR_SUCESS} ✅ ${COLOR_DEFAULT} ${software}"
    fi
done

sleep 2