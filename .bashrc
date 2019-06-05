#PS1=' ( ._.)φ__ \w > '
#cyan
PS1="\`if [ \$? = 0 ]; 
  then echo \[\e[36m\]'ヾ(⌐■_■)ノ♪ \w> '\[\e[0m\]; 
  else echo \[\e[31m\]'(╯°□°）╯︵ ┻━┻ \w> '\[\e[0m\]; fi
  \`\[\e[32m\][\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\[\e[0m\] "
#green
# PS1="\`if [ \$? = 0 ]; then echo \[\e[32m\]'( ._.)φ__ \w > '\[\e[0m\]; else echo \[\e[31m\]'( o_o)φ__ \w > '\[\e[0m\]; fi\`"

export PATH="$HOME/.local/bin:/usr/sbin/:$HOME/.node_modules_global/bin:$PATH"

#aliases
alias vi='vim'

#append any additional sh scripts found in /etc/profile.d/:
for profile_script in /etc/profile.d/*.sh ; do
    if [ -x $profile_script ]; then
        . $profile_script
    fi
done
unset profile_script
