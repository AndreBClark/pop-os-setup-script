#!/bin/bash
function init_functions () {
  # source all files in functions folder
  for f in $(ls functions/*.sh); do
    if [ -f "$f" ]; then
      source "$f"
    fi
  done
}
export init_functions