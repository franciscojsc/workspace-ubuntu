#!/bin/bash

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