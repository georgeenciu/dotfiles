#!/bin/bash

install_phpactor() {
  if exists "phpactor"; then 
    echo_item "phpactor is already installed" "green"
  else
    echo_item "installing phpactor" "green"
    mkdir ~/phpactor
    git clone git@github.com:phpactor/phpactor ~/phpactor
    cd ~/phpactor
    composer install 
    cd -
    sudo ln -s ~/phpactor/bin/phpactor /usr/local/bin/phpactor
  fi
}
