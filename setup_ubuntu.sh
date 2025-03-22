#!/bin/bash

GREEN="\033[32m"
YELLOW="\033[33m"
RED="\033[31m"
RESET="\033[0m"

writeColor() {
  echo -e "$1 $2 $RESET"
}

run_installs() {
  for dir in */; do
    if [[ -d "$dir" && "$dir" != "bin/" && "$dir" != "install/" ]]; then
      if [[ -f "$dir/install.sh" ]]; then
        read -p "Install ${dir}? (Y/n): " resp
	if [ -z "$resp" ] || [ "$resp" = "y" ]; then
          writeColor $YELLOW "Installing $dir..."
          $dir./install.sh
          writeColor $YELLOW "Finished installing $dir"
        fi
      fi
    fi
  done
}

run() {
  writeColor $GREEN "Beginning setup..."
  sudo apt-get update
  if run_installs; then
    writeColor $GREEN "Setup complete!"
  else
    writeColor $RED "Setup failed. Please see the error(s) above"
  fi
}

run
