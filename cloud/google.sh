#!/bin/bash

install_gcloud() {
  if exists "gcloud"; then
    echo_item "google cloud cli is already istalled" "green"
  else
    echo_item "installing google cloud cli" "green"
    sudo apt install apt-transport-https ca-certificates gnupg
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
    sudo apt update && sudo apt install google-cloud-cli
  fi
}
