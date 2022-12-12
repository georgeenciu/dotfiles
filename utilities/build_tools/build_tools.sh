#!/bin/bash

install_build_tools() {
  if exists "tar"; then
    echo_item "tar is already installed" "green"
  else
    echo_item "installing tar" "green"
    sudo apt -qq --yes install tar
  fi

  if [[ $(dpkg -l | grep 'libevent-dev' >/dev/null) ]]; then
    echo_item "libevent-dev is already installed" "green"
  else
    echo_item "installing libevent-dev" "green"
    sudo apt -qq --yes install libevent-dev
  fi

  if [[ $(dpkg -l | grep 'libncurses-dev' >/dev/null) ]]; then
    echo_item "libncurses-dev is already installed" "green"
  else
    echo_item "installing libncurses-dev" "green"
    sudo apt -qq --yes install libncurses-dev
  fi

  if exists "make"; then
    echo_item "make is already installed" "green"
  else
    echo_item "installing make" "green"
    sudo apt -qq --yes install make
  fi

  if [[ $(dpkg -l | grep 'build-essential' >/dev/null) ]]; then
    echo_item "build-essential is already installed" "green"
  else
    echo_item "installing build-essential" "green"
    sudo apt -qq --yes install build-essential
  fi
}


install_libfuse () {
  if exists "fusermount"; then
    echo_item "fusermount is already installed" "green"
  else
    echo_item "installing fusermount" "green"
    sudo add-apt-repository --yes universe
    sudo apt install -qq --yes libfuse2
  fi
}
