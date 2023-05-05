#!/bin/bash

USER=$( whoami )

cd ~

pacman -Syy

#yay------------------------------------------------------
sudo pacman -S -q --needed git base-devel
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER:$USER ./yay
cd yay
makepkg -si
cd ~
yay -Syy
#yay------------------------------------------------------

sudo pacman -S -q zsh firefox vim nvim discord htop neofetch lolcat steam flatpak yakuake vlc lsd figlet wget

#fonts----------------------------------------------------
cd ~/Downloads 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/JetBrainsMono.zip
sudo mkdir /usr/local/share/fonts && sudo unzip JetBrainsMono.zip /usr/local/share/fonts/
cd ~
#fonts----------------------------------------------------

yay -S visual-studio-code-bin
 
sudo flatpak install spotify

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo chsh /usr/bin/zsh

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes
sudo cp /home/$USER/Salty/yakuakerc /home/$USER/.config

