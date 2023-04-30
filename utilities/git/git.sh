#!/bin/bash

install_git() {
	if exists "git"; then
		echo_item "git is already installed" "green"
	else
		echo_item "installing git" "green"
		sudo apt -qq --yes install git
	fi
}

install_diff_so_fancy() {
	if exists "diff-so-fancy"; then
		echo_item "diff-so-fancy is already installed" "green"
	else
		echo_item "installing diff-so-fancy" "green"
		npm install -g diff-so-fancy
	fi
}

configure_git() {
	echo_item "create code folders" "green"
	mkdir -p ~/code/georgeenciu/
	mkdir -p ~/code/nch/
	mkdir -p ~/code/itworks/

	echo_item "symlinking global gitignore" "green"
	ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitignore_global ~/.gitignore_global

	echo_item "symlinking global gitconfig" "green"
	ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig ~/.gitconfig

	echo_item "symlinking georgeenciu@gh gitconfig" "green"
	ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig_gh ~/code/georgeenciu/.gitconfig
	ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig_nch ~/code/nch/.gitconfig
	ln -sf ~/code/georgeenciu/dotfiles/utilities/git/gitconfig_iwtorks ~/code/itworks/.gitconfig
}
