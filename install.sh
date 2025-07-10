#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
white='\033[0;37m'
bold='\033[1m'
plain='\033[0m'

cur_dir=$(pwd)

echo -e "${green}► Installing lera-cli${plain}"

curl -s -o ~/.lera-art https://raw.githubusercontent.com/FlamesC0der/lera-cli/master/lera-art

if ! grep -q "alias clera=" ~/.bash_profile; then
    echo "alias clera='clear'" >> ~/.bash_profile
fi

if ! grep -q "alias lera=" ~/.bash_profile; then
    echo "alias lera='cat ~/.lera-art'" >> ~/.bash_profile
fi

echo -e "${magenta}► Successfully installed!${plain}"

echo -e "${cyan}► Added commands:${plain}"
echo -e "${cyan} - clera - clear alias${plain}"
echo -e "${cyan} - lera  - print cute art 💖${plain}"
cat ~/.lera-art
echo -e ""
echo -e "${green}► Please restart terminal${plain}"
exit 0