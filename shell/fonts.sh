#!/bin/bash
sudo add-apt-repository universe -y
sudo add-apt-repository multiverse -y
sudo apt update -y

# install fire-code font
sudo apt install fonts-firecode

sudo apt install fonts-inter

# set inter as default font
gsettings set org.gnome.desktop.interface font-name 'Inter Bold'
# set fira code as default monospace font
gsettings set org.gnome.desktop.interface monospace-font-name 'Fira Code Regular'
