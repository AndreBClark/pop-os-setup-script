#!/bin/bash
isInstalled() {
  if [ "$(which "$1")" ]; then
    echo "$1 is already installed! skipping..."
    return 0
  else
    echo "$1 is not installed. installing..."
    return 1
  fi
}
runner () {
  cd "$PWD" || exit 1
  # . ./installs/functions.sh && init_functions
  packageName=$1
  if ! isInstalled "$packageName" ; then
    echo "runner starting..."
    # loop through arguments and run each one
    for i in "${@:2}"
    do
      echo "running $i"
      $i
    done
    # if the last command was successful, then exit 0
    if ! $packageName ; then
          echo "ERROR: The installation of $packageName has failed."
      exit 1

    else
      echo "SUCCESS: The installation of $packageName has completed successfully."
      exit 0
    fi
  fi
}

# run runner when this script is called
runner "$@"