#!/bin/bash

install_azure() {
	if exists "az"; then
		echo_item "azure cli is already installed" "green"
	else
		echo_item "installing azure cli" "green"
		curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
	fi
}

install_func() {
	if exists "func"; then
		echo_item "azure functions core tools is already installed" "green"
	else
		echo_item "installing azure functions core tools" "green"
		sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
		sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
		sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
		sudo apt update
		sudo apt install azure-functions-core-tools-4
	fi
}
