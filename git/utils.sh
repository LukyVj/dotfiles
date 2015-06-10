function git_clean_branches {
  git branch --merged master | grep -v "master" | xargs -n 1 git branch -d
}

alias gcl=git_clean_branches

function g {
  if [ $# -eq 0 ]; then
    git $*
  else
    git add --all :/
    git commit -m "$*"
  fi
}
