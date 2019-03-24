# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# set fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# set prompt
export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\] \[\e[34;40m\]\w\[\e[m\]\\$ "

# run neofetch
neofetch

# run tmux
if [[ $TERM == "xterm-termite" ]]; then
  tmux a -t base || tmux new -s base
fi
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
