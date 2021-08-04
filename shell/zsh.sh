#!/bin/bash
./functions/isRoot.sh

./functions/runner.sh "zsh" "sudo apt-get install -y zsh | chsh -s $(which zsh) | source~/.zshrc | exec zsh"