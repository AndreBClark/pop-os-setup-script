#!/bin/sh

# create function to check if root
isRoot() {
  if ! [ "$(id -u)" = 0 ]; then
    echo "This script must be run as root" 1>&2
    exit 1
  fi
}

# run function with arguments when script is called
isRoot "$@"