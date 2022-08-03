#!/bin/bash

sudo pacman -S --quiet zsh firefox vim discord konsole

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --quiet

chsh /bin/zsh

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes
