#!/bin/bash
# check if bitwarden is installed with flatpak
bitwarden=/usr/share/flatpak/installations/bitwarden.flatpakref
if [ -f $bitwarden ]; then
  exit 0
fi

./functions/runner.sh $bitwarden "flatpak install flathub com.bitwarden.desktop"