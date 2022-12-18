#!/bin/bash

install_spotify() {
  if exists "spotify"; then
    echo_item "spotify is already installed" "green"
  else
    echo_item "installing spotify" "green"
    curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update && sudo apt-get install spotify-client
  fi
}








