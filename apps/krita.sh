#!bin/sh
krita_install () {
  . $PWD/installs/functions.sh
  init_functions
  runner `krita --version` "sudo apt-get install krita"
}
