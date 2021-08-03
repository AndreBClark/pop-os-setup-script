#!bin/sh
install_code() {
  . $PWD/installs/functions.sh
  init_functions
  runner `which code` "sudo apt-get install code -y"
}
install_code