#!/bin/bash
"$PWD/functions/isRoot.sh"

"$PWD/functions/runner.sh" "zsh" "sudo apt install -y zsh | chsh -s $(which zsh) | source~/.zshrc | exec zsh"setupnord 