## About
This repo contains personal configuration and rc files for my development environment as well as software installation scripts for things I regularly use.

## Installation

To set up the development environment using this repository, simply navigate to this repo's root directory and run the below command. 

```bash
git clone <this-repo>
cd <this-repo>
./install/setup_<your_env>.sh
```

For example, on Ubuntu run

```bash
./install/setup_ubuntu.sh
```

## Adding New Installs

This project is structured such that each piece of software gets its own directory. This is where all that software's configuration should live. Inside every setup_ script it should iterate over every directory and run the `install.sh` file present in each directory that is not `bin/` or `install/` (this will be each software product). This script should take all the necessary steps to install the software.