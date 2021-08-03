#!bin/bash
runner () {
  cd $PWD
  . ./installs/functions.sh
  init_functions
  packageName=$1
  if isInstalled $packageName ; then
    exit 0
  fi
  echo "runner starting..."
  # loop through arguments and run each one
  for i in "${@:2}"
    do
    echo `$i`
  done
  installStatus $packageName
}

export runner