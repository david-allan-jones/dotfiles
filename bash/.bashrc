# Apperance
if [ -f ~/.bash_env.sh ]; then
  source ~/.bash_env.sh
fi

# For aliases
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# For functions
if [ -f ~/.bash_functions.sh ]; then
  source ~/.bash_functions.sh
fi

# For environment specific locals (work, etc); should not be versioned
if [ -f ~/.bash_locals.sh ]; then
  source ~/.bash_locals.sh
fi

