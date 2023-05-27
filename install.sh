#!/bin/bash
if [ $USER == root ]
then
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "you are executing as root. Aborting"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
else

sudo pacman -Syu -q

cd ~

#yay------------------------------------------------------
sudo pacman -S -q --needed git base-devel
sudo git https://aur.archlinux.org/pikaur.git
sudo chown -R "${USER:=$(/usr/bin/id -run)}:$USER" ./pikaur
cd pikaur
makepkg -si
cd ~
pikaur -Syy -q
#yay------------------------------------------------------

sudo pacman -S -q vim neovim discord btop neofetch lolcat yakuake zsh vlc lsd figlet wget
 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s /usr/bin/zsh $USER

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes
sudo cp /home/$USER/Salty/yakuakerc /home/$USER/.config
sudo cp /home/$USER/Salty/pacman.conf /etc/
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
fi
