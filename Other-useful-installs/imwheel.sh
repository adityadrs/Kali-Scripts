#!/bin/bash

##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal

STAGE=0                                                         # Where are we up to
TOTAL=$( grep '(${STAGE}/${TOTAL})' $0 | wc -l );(( TOTAL-- ))  # How many things have we got todo


#### Install imwheel
(( STAGE++ )); echo -e "\n\n ${GREEN}[+]${RESET} (${STAGE}/${TOTAL}) Installing ${GREEN}imwheel${RESET}"
apt-get install imwheel\
  || echo -e ' '${RED}'[!] Issue with apt install'${RESET} 1>&2
touch ~/.imwheelrc
#change the marked values to change the mouse scroll speed
#None,      Up,   Button4, 3 <-- change this
#None,      Down, Button5, 3 <-- change this
#Control_L, Up,   Control_L|Button4
#Control_L, Down, Control_L|Button5
#Shift_L,   Up,   Shift_L|Button4
#Shift_L,   Down, Shift_L|Button5
echo '.*" \nNone,      Up,   Button4, 3 \nNone,      Down, Button5, 3 \nControl_L, Up,   Control_L|Button4\nControl_L, Down, Control_L|Button5 \nShift_L,   Up,   Shift_L|Button4 \nShift_L,   Down, Shift_L|Button5 \n'> ~/.imwheelrc
echo 'imwheel --kill --buttons "4 5"'>> .bashrc
popd >/dev/null
