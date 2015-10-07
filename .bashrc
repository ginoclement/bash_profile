# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Some gitish stuff
git_prompt ()
{
 if ! command git rev-parse --git-dir > /dev/null 2>&1; then
  return 0
 fi
 
 git_branch=$(command git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
 
 if command git diff --quiet 2>/dev/null >&2; then
  git_color='\[\e[0;36m\]'
 else
  git_color='\[\e[0;35m\]'
 fi
 
 echo " [$git_color$git_branch\[\e[0m\]]"
}
PROMPT_COMMAND='PS1="\[\033[01;37m\]\W\[\033[00m\]$(git_prompt)\$ "'

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Load aliases
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# RVM Stuff
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
