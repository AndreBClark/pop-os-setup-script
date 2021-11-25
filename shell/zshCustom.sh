#!/bin/bash
# "$PWD"/functions/isRoot.sh
# if $HOME is not set it to /home/$USER

scripts=(
  # install oh-my-zsh
  "$(sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended)"

  #install zsh config file from gist
  "$(curl -fsSL https://gist.githubusercontent.com/AndreBClark/41e7d1249dc690e7fe3ee0ed3b9215e1/raw/c3e7302cf61359a93b6bedac76016fa78e5391d6/.zshrc -o "/home/$USER/.zshrc")"
  "setupnord"
  #download shades-of-nord.zsh-theme from gist
  "$(curl -fsSL https://gist.githubusercontent.com/AndreBClark/7f9ec73f0a1d4beb8f9c5b2e8be0e8ba/raw/877d21187f655a52cb47243f25b6c0ff30abf2f5/shades-of-nord.zsh-theme -o "$HOME/.oh-my-zsh/themes/shades-of-nord.zsh-theme")"
  "$(
    # if oh-my-zsh is installed
    if [ -d "$HOME/.oh-my-zsh" ]; then
      # if zsh is not the default shell
      if [ "$SHELL" != "/bin/zsh" ]; then
        # change default shell to zsh
        chsh -s /bin/zsh
      fi
      # if .oh-my-zsh/custom/plugins/zsh-dircolors-nord already exists skip clone
      if [ ! -d "/home/$USER/.oh-my-zsh/custom/plugins/zsh-dircolors-nord" ]; then
        # else skip this
        echo "zsh-dircolors-nord is already installed"

      else
        # clone zsh-dircolors-nord
        git clone https://github.com/coltondick/zsh-dircolors-nord.git "/home/$USER/.oh-my-zsh/plugins/zsh-dircolors-nord"
        echo "Installing zsh-dircolors-nord"
      fi
    fi
  )"
)

# add each item in the array as arguments to runner
./functions/runner.sh "${scripts[@]}"