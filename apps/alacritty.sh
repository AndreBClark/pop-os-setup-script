if ! isInstalled alacritty; then
  sudo apt-get install alacritty
#!bin/sh
. ./functions.sh && init_functions

alacritty=`alacritty -v`


runner $alacritty "sudo apt-get install alacritty"
