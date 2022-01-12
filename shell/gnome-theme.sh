#!/bin/bash
cd ~ || exit
# IF ~/.themes does not exist, create it
if [ ! -d ~/.themes ]; then
  mkdir ~/.themes
fi
# IF ~/.local/share/icons does not exist, create it
if [ ! -d ~/.local/share/icons ]; then
  mkdir ~/.local/share/icons
fi
gh release download --repo https://github.com/AndreBClark/Nordic-Darker-Cosmic.git --pattern '*.tar.xz'
tar xf Nordic-Darker-Cosmic.tar.xz -C ~/.themes
rm Nordic-Darker-Cosmic.tar.xz
gh release download --repo https://github.com/AndreBClark/Zafiro-icons-Dark-Pop-os.git --pattern '*.tar.xz'
tar xf Zafiro-icons-Dark-Pop-os-release.tar.xz -C ~/.local/share/icons && rm Zafiro-icons-Dark-Pop-os-release.tar.xz
# Install the theme
gsettings set org.gnome.desktop.interface gtk-theme 'Nordic-Darker-Cosmic'
gsettings set org.gnome.desktop.wm.preferences theme 'Nordic-Darker-Cosmic'
gsettings set org.gnome.desktop.interface icon-theme 'Zafiro-icons-Dark-Pop-os'
# set background to home/andre/.themes/Nordic-Darker-Cosmic/rocinante-nord03.png
gsettings set org.gnome.desktop.background picture-uri 'file:///home/andre/.themes/Nordic-Darker-Cosmic/rocinante-nord03.png'
# chang gdm background to home/andre/.themes/Nordic-Darker-Cosmic/rocinante-nord03.png
# download file from https://github.com/thiggy01/gdm-background/releases/download/v1.0/gdm-background_1.0_amd64.deb
gh release download --repo https://github.com/thiggy01/gdm-background.git --pattern '*.deb' && sudo dpkg -i gdm-background_1.0_amd64.deb
# install gdm-background