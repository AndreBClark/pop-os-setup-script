#!/bin/bash
./functions/runner.sh "" "${scripts[@]}"

scripts=(
    "sudo apt install -y flatpak"
    "flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"
)