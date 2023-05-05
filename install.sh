#!/bin/bash
if [ $USER == root ]
then
echo "WARNING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "you are executing as root, this will probably cause problems. | as of now if you still want to execute as root please remove the if statement by editing the script"
echo "WARNING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
else

cd ~

pacman -Syy

#yay------------------------------------------------------
sudo pacman -S -q --needed git base-devel
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R "${USER:=$(/usr/bin/id -run)}:$USER" ./yay
cd yay
makepkg -si
cd ~
yay -Syy
#yay------------------------------------------------------

sudo pacman -S -q zsh firefox vim nvim discord btop neofetch lolcat steam yakuake vlc lsd figlet wget

#fonts----------------------------------------------------
cd ~/Downloads 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/JetBrainsMono.zip
sudo mkdir /usr/local/share/fonts && sudo unzip JetBrainsMono.zip /usr/local/share/fonts/
cd ~
#fonts----------------------------------------------------

yay -S visual-studio-code-bin
 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo chsh /usr/bin/zsh

sudo cp /home/$USER/Salty/.zshrc /home/$USER
sudo cp /home/$USER/Salty/salty.zsh-theme /home/$USER/.oh-my-zsh/themes
sudo cp /home/$USER/Salty/yakuakerc /home/$USER/.config
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
fi
