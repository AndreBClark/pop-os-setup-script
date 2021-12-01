#!/bin/bash

# install fire-code font
sudo apt install fonts-firecode

gh release download --repo https://github.com/rsms/inter.git --pattern "*.zip"
# unzip the font
unzip inter-*.zip
# move the font to the right place
sudo mv inter-* /usr/share/fonts/truetype/
# update font cache
sudo fc-cache -f -v

# set inter as default font
gsettings set org.gnome.desktop.interface font-name 'Inter Bold'
# set fira code as default monospace font
gsettings set org.gnome.desktop.interface monospace-font-name 'Fira Code'