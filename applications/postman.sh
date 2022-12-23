#!/bin/bash

install_postman() {
  if exists "postman"; then
    echo_item "postman is already installed" "green"
  else
    echo_item "installing postman" "green"
		sudo snap install postman > /dev/null
  fi
}
