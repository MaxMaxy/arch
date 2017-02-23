#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=vim
export EDITOR=vim

alias ls='ls -la'
alias ls='ls --color=auto'
PS1='\[$(tput bold)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;11m\]@\[$(tput sgr0)\]\[\033[38;5;46m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;196m\][\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;196m\]]\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;0m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;226m\]\[\033[48;5;-1m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]'
