#!/bin/bash
function setcwd() {
  # set the current working directory to the directory of the script
  cd "$(dirname "$0")" || return
  cd ..
  # echo current working directory
  echo "Current working directory: $(pwd)"
}
export setcwd