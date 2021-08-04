#!/bin/bash
./functions/runner.sh "NVM_DIR" "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash | source ~/.zshrc | exec zsh"
