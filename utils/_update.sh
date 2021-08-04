#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo fwupdmgr get-devices -y
sudo fwupdmgr get-updates -y
sudo fwupdmgr update -y
flatpak update