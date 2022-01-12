#!/bin/bash
# "$PWD"/functions/isRoot.sh
# if $HOME is not set it to /home/$USER

scripts=(
  # check if .oh-my-zsh is installed
  "$(if [[ ! -d $HOME/.oh-my-zsh ]]
  then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --unattended
  fi)"

  #install zsh config file from gist
  "$(cp ./config/zshrc ~/.zshrc)"
)

# add each item in the array as arguments to runner
./functions/runner.sh "${scripts[@]}"
# if oh-my-zsh is installed
if [ -d "$HOME/.oh-my-zsh" ] 
  then
  # if zsh is not the default shell
  if [ "$SHELL" != "/bin/zsh" ]
  then
    # change default shell to zsh
    chsh -s /bin/zsh
  fi
  # if .oh-my-zsh/custom/plugins/zsh-dircolors-nord diroctory exists
  if [ -d "$ZSH_CUSTOM/plugins/zsh-dircolors-nord" ]
  then
    # else skip this
    echo "zsh-dircolors-nord is already installed"
  else
    # clone zsh-dircolors-nord
    git clone https://github.com/coltondick/zsh-dircolors-nord.git "$ZSH_CUSTOM/plugins/zsh-dircolors-nord"
    echo "Installing zsh-dircolors-nord"
    setupnord
  fi
  else echo "oh-my-zsh is not installed"
fi