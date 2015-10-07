# Gino Clement
# Bash Aliases

# File list
alias la='ls -lah'
alias ll='ls -lh'
alias ls='ls --color=auto'

# Application Shortcuts
alias l='less'
alias s='sublime'

#Git
alias gc='git commit -m'
alias gf='git fetch'
alias gm='git merge'
alias gp='git push'
alias gpsuo='git push --set-upstream origin'
alias grpo='git remote prune origin'
alias grup="git remote update --prune"
alias gs="git status"
alias gdc="git diff --cached"
alias glx="git log --graph --decorate --all --oneline"
alias glxx="git log --graph --decorate --all"
alias gitlog="git --no-pager log -n 20 --pretty=oneline"

# Some railsish stuff
alias rpc="rake parallel:create"
alias rpp="rake parallel:prepare"
alias rps="rake parallel:spec"