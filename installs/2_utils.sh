#!/bin/bash
function exec_utils() {
    for file in $(ls utils/*.sh); do
        echo "Running $file"
        sh $file
    done
}
exec_utils