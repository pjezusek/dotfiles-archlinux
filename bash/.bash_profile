#!/bin/bash

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$(tty)" == '/dev/tty1' ]]; then
    exec startx
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
