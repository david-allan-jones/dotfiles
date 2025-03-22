# For aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# For functions
if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

# For environment specific locals (work, etc); should not be versioned
if [ -f ~/.bash_locals ]; then
  . ~/.bash_locals
fi
