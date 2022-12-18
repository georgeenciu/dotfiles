#!/bin/bash


install_azure() {
  if exists "az"; then 
    echo_item "azure cli is already installed" "green"
  else
    echo_item "installing azure cli" "green"
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
  fi
}
