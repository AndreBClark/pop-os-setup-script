#!bin/sh
. ./installs/functions.sh && init_functions


nvm_title="NVM_DIR"

runner $nvm_title "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash | source ~/.zshrc | exec zsh"
