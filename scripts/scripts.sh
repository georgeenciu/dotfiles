#!/bin/bash

install_scripts() {
	for filepath in ~/code/georgeenciu/dotfiles/scripts/*; do
		[[ -e "$filepath" ]] && ! [[ "$filepath" =~ scripts\.sh ]] || continue
		filename=${filepath##*/}
		ln -sf $filepath ~/bin/$filename
	done
}
install_scripts
