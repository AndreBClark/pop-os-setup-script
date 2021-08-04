#!/bin/bash
./functions/runner.sh flatpak "sudo apt install flatpak"

if [ ! -d ~/.local/share/flatpak/repos ]; then
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    # tell user flathub repo was added
    echo "Flathub repo added"
    exit 0
else
    echo "Flathub repo already added. skipping..."
    exit 0
fi