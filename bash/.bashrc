#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Includes {{{
[[ -f "$HOME/.bash_functions" ]] && source "$HOME/.bash_functions"

[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

[[ -f "$HOME/.bash_env" ]] && source "$HOME/.bash_env"
# }}}

# Exports {{{
# set prompt
PS1="\[\033[38;5;118m\][\[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\]\[\033[38;5;118m\]]\\$\[$(tput sgr0)\] "
export PS1

# set fzf
export FZF_DEFAULT_OPTS='--color=fg:#e6e6e6,bg:-1,hl:#d92323 --color=fg+:#ffffff,bg+:#262626,hl+:#0ac2ff --color=info:#ffff87,prompt:#d7005f,pointer:#af5fff --color=marker:#bfff00,spinner:#af5fff,header:#87afaf'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# Add pyenv to PATH for scripting.
export PATH="$PATH:$HOME/.pyenv/bin"

# Set terminal
export EDITOR=nvim

# Add yarn bin to PATH
export PATH="$PATH:$(yarn global bin)"
# }}}

# Initializers {{{
# initialize fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Initialize bookmarks
source ~/.local/bin/bashmarks.sh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# }}}

fish

# run tmux
# if [[ $TERM == "screen-256color" ]] && [ -z "$TMUX" ] && [ -z "$NO_TMUX" ]; then
#   setup_tmux
# fi
# }}}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
