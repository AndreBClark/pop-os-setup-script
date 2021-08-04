#!/bin/bash

scripts=(
  "sudo rm /usr/share/keyrings/githubcli-archive-keyring.gpg"
  "$(curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg)"
  "$(echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null)"
  "sudo apt update -y"
  "sudo apt install -y gh"
)

./functions/runner.sh "gh" "${scripts[@]}"

# create array of install commands