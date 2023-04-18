
#!/bin/bash

cd ~

#yay------------------------------------------------------
sudo pacman -S -q --needed git base-devel
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R salty:salty ./yay
cd yay
makepkg -si
cd ~
#yay------------------------------------------------------

sudo pacman -S -q zsh firefox vim discord htop neofetch lolcat steam flatpak yakuake vlc lsd figlet

yay -Syu visual-studio-code-bin
 
sudo flatpak install spotify

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo chsh /usr/bin/zsh

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes
sudo cp /home/$USER/Salty/yakuakerc /home/$USER/.config

lookandfeeltool -a org.kde.breezedark.desktop

