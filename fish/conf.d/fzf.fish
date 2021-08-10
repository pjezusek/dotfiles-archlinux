set -g FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS --color=fg:#e6e6e6,bg:-1,hl:#d92323 --color=fg+:#ffffff,bg+:#262626,hl+:#0ac2ff --color=info:#ffff87,prompt:#d7005f,pointer:#af5fff --color=marker:#bfff00,spinner:#af5fff,header:#87afaf"
set -g FZF_DEFAULT_COMMAND 'ag $dir --hidden --ignore .git -g ""'
set -g FZF_CTRL_T_OPTS "--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
set -g FZF_ALT_C_OPTS "--preview 'tree -C {} | head -200'"
set -g TERM "xterm-256color"
set -U FZF_LEGACY_KEYBINDINGS 0
