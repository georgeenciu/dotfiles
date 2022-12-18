#!/bin/bash

install_aws() {
  if exists "aws"; then 
    echo_item "aws is already installed" "green"
  else
    echo_item "installing aws" "green"
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm awscliv2.zip
    rm -rf aws/
  fi
}
