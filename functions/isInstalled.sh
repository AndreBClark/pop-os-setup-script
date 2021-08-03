#!bin/sh

# create function accepts a file path string
# checks if the file is installed

# if yes, it exits the script
# if not, it continues the script
isInstalled() {
  if [ -f `which $1` ]; then
    echo "$1 is already installed! skipping.."
    exit 0
  else
    echo "$1 is not installed. installing"
    exit 1
  fi
}
# export the function
export isInstalled