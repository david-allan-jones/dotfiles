## About
This repo contains personal configuration and rc files for my development environment as well as software installation scripts for things I regularly use.

## Installation

To set up the development environment using this repository, run the below command:

```bash
git clone git@github.com:david-allan-jones/dotfiles.git
sh dotfiles/setup.sh
```

## Adding New Installs

This project takes a flat structure where configuration for variuos tools are presesnt in the root. The `setup.sh` file will perform necessary installation (needs to maintained with different environments and package managers) as well as a step to then either copy the config file to the appropriate location or create symbolic link. This means you can edit the configuration file where the tool looks for it and then commit it later if you wish from the git repo directory.