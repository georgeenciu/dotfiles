#!/bin/bash

install_obsidian() {
	if exists "Obsidian"; then
		echo_item "neovim is already installed" "green"
	else
		echo_item "installing neovim" "green"
		curl -LO https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.5/Obsidian-1.3.5.AppImage
		chmod u+x Obsidian-1.3.5.AppImage
		sudo mv Obsidian-1.3.5.AppImage /usr/bin/Obsidian
	fi
}
