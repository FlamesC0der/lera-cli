#!/bin/bash

curl -s -o ~/.lera-art https://raw.githubusercontent.com/FlamesC0der/lera-cli/master/lera-art

if ! grep -q "alias lera=" ~/.bash_profile; then
    echo "alias lera='cat ~/.lera-art'" >> ~/.bash_profile
else
    echo "Alias already exists"
fi
cho "Done! Restart your terminal"