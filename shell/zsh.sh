#!/bin/bash
./functions/isRoot.sh

./functions/runner.sh "zsh" "sudo apt-get install zsh | chsh -s $(which zsh) | source~/.zshrc | exec zsh"