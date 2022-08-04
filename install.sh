#!/bin/bash

sudo pacman -S -q zsh firefox vim discord konsole rpm htop neofetch

sudo rpm -i gtop

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh /bin/zsh

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes

tar xf Sweet.tar.xz -C /usr/share/themes/

lookandfeeltool -a Sweet
