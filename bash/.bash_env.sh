
#!/bin/bash
# These are standard ANSI escape codes
COLOR_RESET='\033[0m'
COLOR_USER='\033[01;32m'   # Bold Green for User
COLOR_HOST='\033[01;32m'   # Bold Green for Host
COLOR_DIR='\033[01;34m'    # Bold Blue for Directory
COLOR_GIT='\033[0;33m'     # Green for Git Branch (regular green to differentiate from bold user/host)

# Function to get the current Git branch string (without colors)
parse_git_branch() {
  local branch
  # Get the current branch name using git rev-parse, suppressing errors if not in a git repo
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

  # If a branch name is found and it's not "HEAD" (for detached HEAD state), print it in parentheses
  if [ -n "$branch" ] && [ "$branch" != "HEAD" ]; then
    echo " ($branch)"
  fi
}

# Set your PS1 (Prompt String 1)
# This configuration combines the typical Linux Mint PS1 structure
# Added \n before \$ to ensure commands start on a new line at the first column.
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[${COLOR_USER}\]\u@\[${COLOR_HOST}\]\h:\[${COLOR_DIR}\]\w${COLOR_RESET}${COLOR_GIT}\$(parse_git_branch)${COLOR_RESET}\n\$ "
export PS2='> '

set -o vi
