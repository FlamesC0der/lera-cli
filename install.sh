#!/bin/bash

if [ ! -f "./lera-art" ]; then
    echo "Lera Art not found."
    exit 1
fi

cp ./lera-art ~/.lera-art

if ! grep -q "alias lera=" ~/.bash_profile; then
    echo "alias lera='cat ~/.lera-art'" >> ~/.bash_profile
else
    echo "Alias already exists in .bash_profile."
fi