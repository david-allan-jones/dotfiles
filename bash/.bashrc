# For aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# For functions
if [ -f ~/.bash_functions.sh ]; then
  . ~/.bash_functions.sh
fi

# For environment specific locals (work, etc); should not be versioned
if [ -f ~/.bash_locals.sh ]; then
  . ~/.bash_locals.sh
fi

# Customizing PS1 with username and hostname in green, and git branch in yellow
PS1='\e[36m🗀  \w\[\033[1;33m\]$(parse_git_branch)\[\033[0m\]$ '
PS2='… '
