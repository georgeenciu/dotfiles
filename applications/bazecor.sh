#!/bin/bash

install_bazecor() {
	if exists "Bazecor"; then
		echo_item "Bazecor is already installed" "green"
	else
		echo_item "installing Bazecor" "green"
		wget -O Bazecor https://github.com/Dygmalab/Bazecor/releases/download/bazecor-1.3.2/Bazecor-1.3.2.AppImage
		chmod u+x Bazecor
		sudo mv Bazecor /usr/bin/Bazecor
	fi
}
