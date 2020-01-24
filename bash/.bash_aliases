#!/bin/bash

# reload bashrc
alias bashre="source ~/.bashrc"

# add verbose and interactive to common commands
alias cp="cp -vi"
alias rm="rm -vi"
alias mv="mv -vi"
alias ln="ln -vi"

# format output of listing commands
alias ls="ls -altr --color=auto"
alias ss="ss -tulpn"
alias ps="ps -aux"

# check environment
alias rbv="rvm current"
alias pyv="pyenv version"

# system state commands
alias reboot="sudo reboot"
alias shutdown="sudo shutdown -h now"

# other
alias wget="wget -c"
alias untar="tar -zxvf"
alias ipe="curl ipinfo.io/ip"
alias open_session="teamocil"

# git aliases
alias gs="git status -sb"
alias ga="git add"
alias gb="git branch -v"
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gch="git checkout"
alias gf="git fetch"
alias gp="git pull"
alias gd="git diff"
alias gl="git log --oneline --decorate"
alias gslog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# teamocil aliases
alias th="teamocil --here"

# color output
alias grep='grep --color=auto'
alias diff='diff --color=auto'
