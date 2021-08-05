#!/bin/bash
scripts=(
  "nvm" 
  "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh)"
  ". $($HOME)/.zshrc"
  "nvm install --lts"
)


./functions/runner.sh "${scripts[@]}"
