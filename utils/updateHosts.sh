#!/bin/bash
# . ./functions/functions.sh && init_functions
"$PWD"/functions/isRoot.sh

curl https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts > /etc/hosts

echo "Hosts Updated"