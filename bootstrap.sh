#!/bin/bash

set -o nounset

source 'helpers.sh'
source 'setup_structure.sh'
source 'utilities/git/git.sh'

sudo apt -qq --yes update

# install_git

# # Clone dotfiles repo and symlink it to the users home directory
# git clone https://github.com/georgeenciu/dotfiles.git ~/code/georgeenciu/dotfiles
# ln -s ~/code/georgeenciu/dotfiles ~/dotfiles
# cd ~/dotfiles && ./install.sh

# Post installation I want to update the remote to be ssh instead of https
cd ~/dotfiles && git remote set-url origin git@github.com:georgeenciu/dotfiles.git

# Installation complete, ask for reboot
echo "Installation completed successfully."
echo "Some of the changes might require a reboot, want to do that now? [Y/n]"
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  sudo shutdown -r
fi
