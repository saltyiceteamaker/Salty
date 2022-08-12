
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

sudo pacman -S -q zsh firefox vim discord konsole htop neofetch lolcat

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh /usr/bin/zsh

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes

lookandfeeltool -a org.kde.breezedark.desktop
