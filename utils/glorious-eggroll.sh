#!/bin/bash
# donwload wine and install
sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/' -y
sudo apt update -y
sudo apt install --install-recommends winehq-staging -y
sudo apt install winetricks -y

sudo add-apt-repository ppa:graphics-drivers/ppa -y && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y nvidia-driver-495 libvulkan1 libvulkan1:i386 && sudo apt autoremove -y



# download latest proton glorious eggroll version
gh release download --repo https://github.com/GloriousEggroll/proton-ge-custom.git --pattern "*.tar.gz"

# extract the glorious eggroll version
tar -xvzf ./Proton*.tar.gz -C ~/.steam/root/compatibilitytools.d
# remove tar
rm ./Proton*.tar.gz
