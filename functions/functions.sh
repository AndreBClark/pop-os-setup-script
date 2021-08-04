#!/bin/bash
function init_functions () {
  # source all shell functions from glob directory
  for f in ./functions/*.sh
  do
    [[ -e "$f" ]] || break  # handle the case of no *.sh files
    . "$f"
  done
}
export init_functions