#!bin/bash
lutris_install() {
  . $PWD/installs/functions.sh
  init_functions
  runner "lutris --version" "sudo add-apt-repository ppa:lutris-team/lutris -y" "sudo apt update" "sudo apt install lutris -y"
}

lutris_install
echo "Lutris installed"