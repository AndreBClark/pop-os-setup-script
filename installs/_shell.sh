#!bin/bash

function exec_shell() {
    . ./installs/functions.sh
    init_functions
    batch_run ./shell
}

exec_shell