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

# Print out the last n commits in order from oldest to newest on the current branch
glopick() {
  branch=$1
  num=$2
  git log "$branch" --oneline -n "$num" | gtac | awk '{print $1}'
}
