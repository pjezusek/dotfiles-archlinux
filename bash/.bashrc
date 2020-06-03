#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Includes {{{
[[ -f "$HOME/.bash_env" ]] && source "$HOME/.bash_env"
[[ -f "$HOME/.bash_functions" ]] && source "$HOME/.bash_functions"
[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
# }}}

# Initializers {{{
# initialize fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# }}}

exec fish
