#!/bin/bash
./functions/chmod.sh

./functions/batch_run.sh ./installs

# reboot once complete
sudo reboot now