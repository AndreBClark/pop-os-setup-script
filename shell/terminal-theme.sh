#!/bin/bash
scripts=(
    #download shades-of-nord.zsh-theme from gist
  "$(cp ./config/shades-of-nord.zsh-theme ~/.oh-my-zsh/themes/shades-of-nord.zsh-theme)"
)

./functions/runner.sh "${scripts[@]}"
