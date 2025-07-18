#!/bin/bash

# Constants
COLOR_RESET='\033[0m'
COLOR_USER='\033[01;32m'   # Bold Green for User
COLOR_HOST='\033[01;32m'   # Bold Green for Host
COLOR_DIR='\033[01;34m'    # Bold Blue for Directory
COLOR_GIT='\033[0;33m'     # Green for Git Branch (regular green to differentiate from bold user/host)

# Shell variables
set -o vi

# Aliases
alias c='clear'
alias du='du -h'
alias ga='git add'
alias gb='git branch'
alias gbi='git bisect'
alias gc='git commit -m'
alias gconf='git config --show-origin'
alias gf='git fetch'
alias gp='git pull'
alias gr='git reset'
alias gs='git switch'
alias gcf='git cat-file -p'
alias gl='git log --oneline -n'
alias gw='git worktree'
alias gwa='git worktree add'
alias gwl='git worktree list'
alias gwr='git worktree remove'
alias gpick='git cherry-pick'
alias la='ls -Al --color=auto'
alias man='MANWIDTH=75 man'
alias ping='ping -c 5'
alias so='source'
alias vi='nvim'
alias vim='nvim'

# Functions
irebase() {
  git rebase -i HEAD~$1
}

# Display the current git branch (used in PS1)
parse_git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    echo " ⎇ $branch"
  else
    echo ""
  fi
}

# Print out the last n commits in order from oldest to newest on the current branch
glopick() {
  branch=$1
  num=$2
  git log "$branch" --oneline -n "$num" | gtac | awk '{print $1}'
}

# Env variables
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[${COLOR_USER}\]\u@\[${COLOR_HOST}\]\h:\[${COLOR_DIR}\]\w${COLOR_RESET}${COLOR_GIT}\$(parse_git_branch)${COLOR_RESET}\n\$ "
export PS2='> '

# For environment specific locals (work, etc); should not be versioned
if [ -f ~/.bash_locals.sh ]; then
  source ~/.bash_locals.sh
fi
