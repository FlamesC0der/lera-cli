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

curl -s -o ~/.lera-art https://raw.githubusercontent.com/FlamesC0der/lera-cli/master/lera-art

if ! grep -q "alias lera=" ~/.bash_profile; then
    echo "alias lera='cat ~/.lera-art'" >> ~/.bash_profile
else
    echo -e "${red}⚠︎  Alias already exists${plain}"
    exit 1
fi

echo -e "${magenta}✨ Successfully installed!${plain}"
echo -e "${green}►  Please restart terminal${plain}"
exit 0