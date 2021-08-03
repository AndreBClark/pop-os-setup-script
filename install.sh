#!bin/bash
. ./functions.sh
init_functions

isRoot

function exec_installs()  {
# run all scripts in the install/ directory
  for scripts in `ls -1 install/*.sh`
  do
    echo "Running $scripts"
    . $scripts
  done
}
exec_installs
