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
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R "${USER:=$(/usr/bin/id -run)}:$USER" ./yay
cd yay
makepkg -si
cd ~
yay -Syy -q
#yay------------------------------------------------------

sudo pacman -S -q firefox vim neovim discord btop neofetch lolcat steam yakuake zsh vlc lsd figlet wget

#fonts----------------------------------------------------
cd ~/Downloads 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/JetBrainsMono.zip
sudo mkdir /usr/local/share/fonts && sudo unzip JetBrainsMono.zip /usr/local/share/fonts/
cd ~
#fonts----------------------------------------------------

yay -S -q visual-studio-code-bin
 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s /usr/bin/zsh $USER

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes
sudo cp /home/$USER/Salty/yakuakerc /home/$USER/.config
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
fi
