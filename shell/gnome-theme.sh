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