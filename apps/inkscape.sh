#!bin/zsh
. ./installs/functions.sh && init_functions

isRoot
inkscape=`inkscape --version`
if isInstalled $inkscape ; then
  exit 0
fi


sudo add-apt-repository ppa:inkscape.dev/stable-1.1
sudo apt-get update
sudo apt install inkscape

installStatus $inkscape