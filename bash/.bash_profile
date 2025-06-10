if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# For environment specific login shell behavior. Should not be versioned
if [ -f ~/.bash_profile_locals.sh ]; then
  source ~/.bash_profile_locals.sh
fi
