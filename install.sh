#!/bin/bash

sudo pacman -S --quiet zsh firefox vim discord konsole rpm

sudo rpm install gtop

chsh /bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
