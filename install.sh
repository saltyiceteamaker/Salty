
#!/bin/bash

#yay------------------------------------------------------
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
#yay------------------------------------------------------

sudo pacman -S -q zsh firefox vim discord konsole rpm htop neofetch

sudo rpm -i gtop

yay -S sweet-kde

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh /usr/bin/zsh

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes

lookandfeeltool -a Sweet
