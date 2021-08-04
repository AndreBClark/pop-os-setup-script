#!/bin/bash
# function to run all scripts in a directory
function batch_run() {
    for script in "$1"/*.sh; do
        if [ -f "$script" ]; then
            echo "Running $script"
            sudo "$script"
        fi
    done
}
# execute function whenever this script is executed
batch_run "$@"