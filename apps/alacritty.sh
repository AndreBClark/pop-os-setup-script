#!/bin/bash

./functions/runner.sh "alacritty" "sudo apt-get install -y alacritty"

# ./config/alacritty.yml > "$HOME"/.alacritty.yml
chmod +x "$HOME"/.alacritty.yml
# copy ./config/alacritty.yml to "$HOME"/alacritty.yml
cp ./config/alacritty.yml "$HOME"/.alacritty.yml



sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50

sudo update-alternatives --auto x-terminal-emulator