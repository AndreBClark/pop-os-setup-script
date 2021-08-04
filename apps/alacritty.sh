#!/bin/bash

./functions/runner.sh "alacritty" "sudo apt-get install -y alacritty"
# copy the config file
./alacritty.yml > "$HOME"/.alacritty.yml

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50

sudo update-alternatives --auto x-terminal-emulator