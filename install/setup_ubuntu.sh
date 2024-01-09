#!/bin/bash

export DOTFILES=$(pwd)

GREEN="\033[32m"
YELLOW="\033[33m"
RESET="\033[0m"

writeColor() {
	echo -e "$1 $2 $RESET"
}

run_installs() {
	for dir in */; do
		if [[ -d "$dir" && "$dir" != "bin/" && "$dir" != "install/" ]]; then
			if [[ -f "$dir/install.sh" ]]; then
				writeColor $YELLOW "Installing $dir..."
				$dir./install.sh
				writeColor $YELLOW "Finished installing $dir"
			fi
		fi
	done
}

run() {
	writeColor $GREEN "Beginning setup..."
	sudo apt-get update
	run_installs
	writeColor $GREEN "Setup complete!"
}

run
