#!/bin/bash

./functions/runner.sh "alacritty" "sudo apt-get install -y alacritty"
# copy the config file
./alacritty.yml > "$HOME"/.alacritty.yml