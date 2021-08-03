#!bin/sh
# if there errors where thrown within the script, tell the user the task failed
installStatus() {
  if [ $? -ne 0 ]; then
    echo "ERROR: The installation of $1 has failed."
    exit 1
    else
    echo "SUCCESS: The installation of $1 has completed successfully."
    fi
}
export installStatus