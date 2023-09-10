# Alias for interactive rebase
irebase() {
  git rebase -i HEAD~$1
}

# Display the current git branch
parse_git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    echo " ⎇ $branch"
  else
    echo ""
  fi
}
