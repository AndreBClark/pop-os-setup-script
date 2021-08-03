#!bin/sh
. ./installs/functions.sh && init_functions

runner `gnome-tweaks --version`  "sudo apt install gnome-tweak-tool"