#!/bin/bash

install_signal_desktop() {
    if exists "signal-desktop"; then 
        echo_item "signal desktop is already installed" "green"
    else 
        echo_item "installing signal desktop" "green"
        # 1. Install our official public software signing key
        wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
        cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

        # 2. Add our repository to your list of repositories
        echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
        sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

        # 3. Update your package database and install signal
        sudo apt update && sudo apt install -qq --yes signal-desktop

        # 4. Cleanup
        rm -f signal-desktop-keyring.gpg

    fi
}