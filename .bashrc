PS1="\`if [ \$? = 0 ];
then echo '\[\033[38;5;79m\]\w > \[\033[38;5;99m\]['\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)']\[\033[00m\]
\[\033[30;48;5;6m\]( ._.)φ__\[\033[00m\] '
else echo '\[\033[38;5;79m\]\w > \[\033[38;5;99m\]['\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)']\[\033[00m\]
\[\033[31m\]( o_o)φ__\[\033[00m\] '; fi
\`"

export PATH="$HOME/.local/bin:/usr/sbin/:$PATH"

# uncomment these to use RVM
# [[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# uncomment these to use RVM
