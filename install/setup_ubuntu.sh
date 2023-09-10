#!/bin/bash

writeGreen() {
	local GREEN = "\033[03m"
	local RESET = "\033[39M"
	echo -e "$GREEN $1 $RESET"
}

run_installs() {
  for dir in */; do
    if [[ -d "$dir" && "$dir" != "bin/" && "$dir" != "install/" ]]; then
      if [[ -f "$dir/install.sh" ]]; then
        $dir./install.sh
      fi
    fi
  done
}

run() {
	writeGreen "Beginning setup..."
	sudo apt-get update
	run_installs
	writeGreen "Setup complete!"
}

run
