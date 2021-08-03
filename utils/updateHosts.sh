#!/bin/bash
. ./installs/functions.sh && init_functions
isRoot

curl https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts > /etc/hosts

echo "Hosts Updated"