#!/bin/bash

# AUTHOR: Leandro Nunes <https://github.com/lnfnunes>
# SOURCE: <https://github.com/lnfnunes/bash-progress-indicator>
# LICENSE: <https://github.com/lnfnunes/bash-progress-indicator/blob/master/LICENSE>
# MODIFIED BY: Francisco Chaves <https://github.com/franciscojsc>

progress() {

    FRAMES=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")
    FRAME_INTERVAL=0.1

    tput civis -- invisible

    for FRAME in "${FRAMES[@]}"; do
        echo -ne "\\r $FRAME "
        sleep $FRAME_INTERVAL
    done

    if [ -z $(jobs -pr) ]
    then
        echo -ne "\\r   \n"
        tput cnorm -- normal
    else
        progress
    fi
}

progress
