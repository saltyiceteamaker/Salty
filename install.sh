#!/bin/bash
if [ $USER == root ]
then
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "executing as root. Aborting"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
else
sudo cp /home/$USER/Salty/pacman.conf /etc/

sudo pacman -Syu -q

cd ~

#pikaur------------------------------------------------------
sudo pacman -S -q --needed git base-devel
sudo git clone https://aur.archlinux.org/pikaur.git
sudo chown -R "${USER:=$(/usr/bin/id -run)}:$USER" ./pikaur
cd pikaur
makepkg -si
cd ~
pikaur -Syy -q
#pikaur------------------------------------------------------

sudo pacman -S -q vim neovim discord htop btop neofetch lolcat zsh vlc lsd figlet wget blender steam gimp libreoffice-fresh krita firefox

pikaur -S protonvpn

chsh -s /bin/zsh $USER

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
fi
