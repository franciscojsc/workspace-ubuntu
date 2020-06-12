#!/bin/bash

CONT_NET=0

checkNet() {
    ping www.google.com -c 5 > /dev/null 2>&1 
    if [ $? -eq 0 ]
    then
        echo  -e "${COLOR_SUCESS} ✅ ${COLOR_DEFAULT} Connection Internet"
    else
        if [ ${CONT_NET} -eq 10 ]
        then
            echo
            echo  -e "${COLOR_DANGER} ╦┌┐┌┌┬┐┌─┐┬─┐┌┐┌┌─┐┌┬┐  ┌─┐┌─┐┌┐┌┌┐┌┌─┐┌─┐┌┬┐┬┌─┐┌┐┌  ┌─┐┌─┐┬┬  ┌─┐┌┬┐"
            echo  -e "${COLOR_DANGER} ║│││ │ ├┤ ├┬┘│││├┤  │   │  │ │││││││├┤ │   │ ││ ││││  ├┤ ├─┤││  ├┤  ││"
            echo  -e "${COLOR_DANGER} ╩┘└┘ ┴ └─┘┴└─┘└┘└─┘ ┴   └─┘└─┘┘└┘┘└┘└─┘└─┘ ┴ ┴└─┘┘└┘  └  ┴ ┴┴┴─┘└─┘─┴┘"
            echo
            exit 1
        fi
        echo  -e "${COLOR_DANGER} ❌ ${COLOR_DEFAULT} Connection Internet"
        CONT_NET=$(($CONT_NET+1))
        sleep 3
        checkNet
    fi;
}

checkNet
