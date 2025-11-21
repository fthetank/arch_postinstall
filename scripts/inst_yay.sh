#!/bin/bash
echo
tput setaf 2
echo "########################################################################"
echo "################### Install basic packages"
echo "########################################################################"
tput sgr0
echo

cd ~/Downloads
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd .. && rm -rf yay-bin
cd ${INST_DIR}