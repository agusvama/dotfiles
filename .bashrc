#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1=' ( ..)φ__ \w > '

#export PATH="$HOME/installed/jdk1.8.0_101/bin/:$HOME/links:$PATH"
export PATH="~/.local/bin:$PATH"

#modified by maldad:
#util
alias cls='clear'
alias cdls='cd && clear'
alias rm='rm -i'
alias mv='mv -i'
alias lsa='ls -a'
alias lsl='ls -l'
alias lsla='ls -la'
#alias tmux='tmux -u'
