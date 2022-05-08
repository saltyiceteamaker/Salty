#! /bin/sh


#needed stuff-------------------------------------------------------------------
sudo apt install snap npm -y
sudo add-apt-repository ppa:libreoffice/ppa ppa:kdenlive/kdenlive-stable -y
#needed stuff-------------------------------------------------------------------


#install------------------------------------------------------------------------
sudo apt update -y

sudo apt install gimp zsh libreoffice stacer ranger vlc audacity vim kdenlive neofetch grub-customizer -y

sudo snap install discord whatsie

sudo npm install gtop -gi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#install-------------------------------------------------------------------------
