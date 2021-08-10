#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Includes {{{
[[ -f "$HOME/.bash_env" ]] && source "$HOME/.bash_env"
[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
# }}}

# Initializers {{{
# initialize fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# }}}

exec fish
