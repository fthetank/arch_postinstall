#!/bin/bash
#set -e
##################################################################################################################
# Author    : fthetank
##################################################################################################################
#

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################


echo
tput setaf 2
echo "################################################################"
echo "################### Install and remove Software"
echo "################################################################"
tput sgr0

echo "Pacman parallel downloads if needed -for ArcoLinux"
FIND="ParallelDownloads = 8"
REPLACE="ParallelDownloads = 20"
sudo sed -i "s/$FIND/$REPLACE/g" /etc/pacman.conf

######### Update Databases
sudo pacman -Syyu

######### Switch pamac Version
sudo pacman -Rs --noconfirm pamac-aur
yay -S --noconfirm pamac-all-git

######### Enable fstrim service
sudo systemctl enable fstrim.timer

######### Setup timeshift
sudo pacman -S timeshift

######### Install Flatpaks
sudo flatpak install com.visualstudio.code -y
sudo flatpak install org.chromium.Chromium -y
sudo flatpak install com.jgraph.drawio.desktop -y
sudo flatpak install org.libreoffice.LibreOffice -y



echo
tput setaf 2
echo "################################################################"
echo "################### Install Gnome Extensions and Tools"
echo "################################################################"
tput sgr0
pacman -S --noconfirm gnome-shell-extension-dash-to-dock 
pacman -S --noconfirm gnome-shell-extension-gtile 
pacman -S --noconfirm gnome-shell-extension-appindicator
pacman -S --noconfirm gnome-online-accounts
yay -S --noconfirm gnome-shell-extension-tiling-assistant
yay -S --noconfirm gnome-shell-extension-clipboard-indicator



echo
tput setaf 2
echo "################################################################"
echo "################### Reset all Settings"
echo "################################################################"
tput sgr0
dconf reset -f / 
echo
tput setaf 2
echo "################################################################"
echo "################### Apply personal settings (exported with dconf dump / > gnome-settings.dmp)"
echo "################################################################"
tput sgr0
# dconf load -f /org/gnome/ < $installed_dir/gnome-settings.dmp
dconf load -f / < $installed_dir/gnome-settings.dmp
echo


tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
