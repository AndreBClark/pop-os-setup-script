#!/bin/bash
# if there errors where thrown within the script, tell the user the task failed
# if there are no errors, tell the user the task was successful
installStatus() {
  if ! $1 ; then
    echo "ERROR: The installation of $1 has failed."
    exit 1
    else echo "SUCCESS: The installation of $1 has completed successfully."
    exit 0
    fi
}
export installStatus