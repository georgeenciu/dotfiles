#!/bin/bash

install_obsidian() {
	if exists "Obsidian"; then
		echo_item "Obsidian is already installed" "green"
	else
		echo_item "installing Obsidian" "green"
		wget -O Obsidian https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.8/Obsidian-1.5.8.AppImage
		chmod u+x Obsidian
		sudo mv Obsidian /usr/bin/Obsidian
	fi
}
