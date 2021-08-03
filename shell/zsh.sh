#!bin/bash
. ./installs/functions.sh && init_functions

isRoot

runner "zsh --version" "sudo apt-get install zsh | chsh -s $(which zsh) | source~/.zshrc | exec zsh"