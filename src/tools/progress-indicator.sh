#!/bin/bash

# AUTHOR: Leandro Nunes <https://github.com/lnfnunes>
# SOURCE: <https://github.com/lnfnunes/bash-progress-indicator>
# LICENSE: <https://github.com/lnfnunes/bash-progress-indicator/blob/master/LICENSE>
# MODIFIED BY: Francisco Chaves <https://github.com/franciscojsc>
# DESCRIPTION: While there are processes in the background, the progress bar is displayed

progress() {
    if [ $(jobs -pr | wc -l) != 0 ]
    then
        FRAMES=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")
        FRAME_INTERVAL=0.1

        tput civis -- invisible

        for FRAME in "${FRAMES[@]}"; do
            echo -ne "\\r $FRAME "
            sleep $FRAME_INTERVAL
        done
        progress
    else
        echo -ne "\\r ✅ \n"
        tput cnorm -- normal
    fi
}

progress
