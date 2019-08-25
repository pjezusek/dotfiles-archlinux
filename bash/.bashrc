#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Includes {{{
if [[ -f "$HOME/.bash_functions" ]]; then
  source "$HOME/.bash_functions"
fi

if [[ -f "$HOME/.bash_aliases" ]]; then
  source "$HOME/.bash_aliases"
fi

if [[ -f "$HOME/.bash_env" ]]; then
  source "$HOME/.bash_env"
fi
# }}}

# Exports {{{
# set prompt
PS1="\[\033[38;5;118m\][\[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\]\[\033[38;5;118m\]]\\$\[$(tput sgr0)\] "
export PS1

# set fzf
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export FZF_COMPLETION_TRIGGER=''
# }}}

# Initializers {{{
# initialize fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Initialize bookmarks
source ~/.local/bin/bashmarks.sh

# Add pyenv to PATH for scripting.
export PATH="$PATH:$HOME/.pyenv/bin"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# }}}

# Commands {{{
# run neofetch
neofetch

# run tmux
if [[ $TERM == "screen-256color" ]] && [ -z "$TMUX" ] && [ -z "$NO_TMUX" ]; then
  setup_tmux
fi
# }}}
