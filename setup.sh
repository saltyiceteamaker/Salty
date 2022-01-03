#! /bin/sh


#needed stuff-------------------------------------------------------------------
sudo apt install apt-transport-https curl
sudo apt install neofetch snap npm
sudo add-apt-repository ppa:libreoffice/ppa
#needed stuff-------------------------------------------------------------------


#REPOS+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#brave-------------------------------------------------------------------------
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#brave--------------------------------------------------------------------------


#wine---------------------------------------------------------------------------
sudo dpkg --add-architecture i386

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'

sudo apt install --install-recommends winehq-stable
#wine---------------------------------------------------------------------------


#lutris-------------------------------------------------------------------------
sudo add-apt-repository ppa:lutris-team/lutris
#lutris-------------------------------------------------------------------------

#REPOS++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#install------------------------------------------------------------------------
sudo apt update

sudo apt install gimp brave-browser zsh libreoffice stacer ranger terminator kdeconnect bat tldr lutris

sudo apt purge fiefox

sudo snap install discord

sudo npm install gtop -gi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install-------------------------------------------------------------------------


#VPN
xdg-open https://protonvpn.com/support/linux-ubuntu-vpn-setup/
#VPN
