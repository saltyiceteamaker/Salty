#! /bin/sh


#needed stuff-------------------------------------------------------------------
sudo apt install apt-transport-https curl
sudo apt install neofetch
sudo apt install snap npm
sudo add-apt-repository ppa:libreoffice/ppa
#needed stuff-------------------------------------------------------------------


#neo----------------------------------------------------------------------------
neofetch
#neo----------------------------------------------------------------------------


#brave-------------------------------------------------------------------------
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#brave--------------------------------------------------------------------------


#install------------------------------------------------------------------------
sudo apt update

sudo apt install gimp brave-browser zsh libreoffice stacer ranger terminator kdeconnect bat fd-find tldr

sudo apt purge fiefox

sudo snap install discord

sudo npm install gtop -g
#install------------------------------------------------------------------------


#git----------------------------------------------------------------------------
sudo git clone https://github.com/ohmyzsh/ohmyzsh
#git----------------------------------------------------------------------------
