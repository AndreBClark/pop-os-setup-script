#!/bin/bash
scripts=( 
  "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh)"
  "nvm install --lts"
  "export NVM_DIR=$HOME/.nvm" 
  "[ -s $NVM_DIR/nvm.sh ]"
  "\. $NVM_DIR/nvm.sh"
  "[ -s $NVM_DIR/bash_completion ] 
  "\. "$NVM_DIR/bash_completion"
)

./functions/runner.sh "nvm" "${scripts[@]}"
