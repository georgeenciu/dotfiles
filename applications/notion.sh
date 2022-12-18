#!/bin/bash

install_notion() {
  if exists "notion-snap"; then 
    echo_item "notion already is installed" "green"
  else
    echo_item "installing notion" "green"
    sudo snap install notion-snap
  fi
}
