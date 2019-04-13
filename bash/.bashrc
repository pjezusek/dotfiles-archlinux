# GENERAL #
###########

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# IMPORTS #
###########

# fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RUN #
#######

# run neofetch
neofetch

# run tmux
if [[ $TERM == "xterm-termite" ]]; then
  tmux a -t base || tmux new -s base
fi

# ALIASES #
###########

alias ls='ls --color=auto'

# ENV VARIABLES #
#################

# set default editor
export EDITOR=nvim

# configure fuzzy finder
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# set prompt
export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\] \[\e[34;40m\]\w\[\e[m\]\\$ "

# add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
