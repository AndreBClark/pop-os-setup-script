#!bin/zsh
. ./functions.sh && init_functions

bitwarden="~/Downloads/bitwarden.AppImage"

# download bitwarden AppImage from https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=appimage
curl -fsSL "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=appimage" -o $HOME/Downloads/bitwarden.AppImage

cd $HOME/Downloads
sudo chmod +x ~ bitwarden.AppImage

installStatus $bitwarden