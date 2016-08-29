#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\u : \w > '

#modified by maldad:
alias cls='clear'
alias tmux='tmux -u'
