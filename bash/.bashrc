#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Includes {{{
[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
# }}}

exec fish
