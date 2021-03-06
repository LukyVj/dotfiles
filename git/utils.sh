function git_delete_branch_for_real {
  git branch -D $1 && git push origin :$1
}

function git_clean_branches {
  git branch --merged master | grep -v "master" | grep -v "^\*" | xargs -n 1  bash -c 'git branch -D $@ && git push origin $@ 2> /dev/null' bash
}

alias gcl=git_clean_branches

function g {
  git add --all :/
  git commit -m $*
}

function git-mustache {
  git commit -m ":man: $*"
}

