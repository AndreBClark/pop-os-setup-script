#!bin/bash
. ./installs/functions.sh && init_functions

runner `discord --version` "sudo apt-get install discord"