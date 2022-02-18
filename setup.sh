#! /bin/sh


#needed stuff-------------------------------------------------------------------
sudo apt install snap npm -y
sudo add-apt-repository ppa:libreoffice/ppa ppa:kdenlive/kdenlive-stable .y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#needed stuff-------------------------------------------------------------------


#install------------------------------------------------------------------------
sudo apt update -y

sudo apt install gimp brave-browser zsh libreoffice stacer ranger vlc audacity vim kdenlive neofetch grub-customizer -y

sudo snap install discord whatsie

sudo npm install gtop -gi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install-------------------------------------------------------------------------
