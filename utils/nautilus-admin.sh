#!/bin/bash
./functions/runner.sh "${scripts[@]}"
scripts=(
  "nautilus-admin"
  "sudo apt install -y nautilus-admin"
  "nautilus -q"
)