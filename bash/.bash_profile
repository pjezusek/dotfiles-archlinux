#
# ~/.bash_profile
#

# load .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# start X
if [[ "$(tty)" == '/dev/tty1' ]]; then
    exec startx
fi

