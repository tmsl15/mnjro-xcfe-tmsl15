#!/bin/bash
set -e
##################################################################################################################
# Author	:	tmsl15 : tmsl15 [at] gmail dot com
# Modified from Erik Dubois : https://www.erikdubois.be
##################################################################################################################

echo "Installing fonts from Arch Linux repo"

sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
sudo pacman -S cantarell-fonts --noconfirm --needed
sudo pacman -S noto-fonts --noconfirm --needed
sudo pacman -S terminus-font --noconfirm --needed
sudo pacman -S ttf-bitstream-vera --noconfirm --needed
sudo pacman -S ttf-dejavu --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed
sudo pacman -S ttf-liberation --noconfirm --needed
sudo pacman -S ttf-roboto --noconfirm --needed
sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S tamsyn-font --noconfirm --needed

echo "################################################################"
echo "####        Fonts from Arch Linux repo have been installed        ####"
echo "################################################################"


echo "################################################################"
echo "####        Installing fonts for conkies                    ####"
echo "################################################################"

[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"


echo "Copy fonts to .fonts"

cp Personal/settings/fonts/* ~/.fonts/

echo "Building new fonts into the cache files";
echo "Depending on the number of fonts, this may take a while..."
fc-cache -fv ~/.fonts



echo "################################################################"
echo "#########   Fonts have been copied and loaded   ################"
echo "################################################################"
