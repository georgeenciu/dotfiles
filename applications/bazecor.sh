#!/bin/bash

install_bazecor () {
  if exists "Bazecor"; then 
		echo_item "Bazecor is already installed" "green"
  else
		echo_item "installing Bazecor" "green"
    wget https://github.com/Dygmalab/Bazecor/releases/download/bazecor-1.0.0/Bazecor-1.0.0.AppImage
    chmod u+x Bazecor-1.0.0.AppImage 
    mv Bazecor-1.0.0.AppImage /usr/bin/Bazecor
  fi
}
