#!/bin/bash
./functions/isRoot.sh

scripts=(
  # install oh-my-zsh
  eval "$(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended)"

  # install zsh nord color scheme
  eval "$(git clone --recursive https://github.com/coltondick/zsh-dircolors-nord.git "$HOME/$ZSH/plugins/zsh-dircolors-nord")"

  # install zsh config file from gist
  eval "$(curl -fsSL https://gist.githubusercontent.com/AndreBClark/41e7d1249dc690e7fe3ee0ed3b9215e1/raw/c3e7302cf61359a93b6bedac76016fa78e5391d6/.zshrc -o ~/.zshrc)"
  "setupnord"
  # download shades-of-nord.zsh-theme from gist
  eval "$(curl -fsSL https://gist.githubusercontent.com/AndreBClark/7f9ec73f0a1d4beb8f9c5b2e8be0e8ba/raw/877d21187f655a52cb47243f25b6c0ff30abf2f5/shades-of-nord.zsh-theme -o "$HOME/.oh-my-zsh/themes/shades-of-nord.zsh-theme")"

  eval "$(". $HOME/.zshrc")"
  eval "$(exec zsh)"
)

# add each item in the array as arguments to runner
./functions/runner.sh "zsh" "${scripts[@]}"