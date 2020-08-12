PS1="\`if [ \$? = 0 ];
then echo '\[\033[38;5;79m\]\w > \[\033[38;5;99m\]['\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)']\[\033[00m\]
\[\033[30;48;5;6m\]( ._.)φ__\[\033[00m\] '
else echo '\[\033[38;5;79m\]\w > \[\033[38;5;99m\]['\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)']\[\033[00m\]
\[\033[31m\]( o_o)φ__\[\033[00m\] '; fi
\`"

export PATH="$HOME/.local/bin:/usr/sbin/:$PATH"

#append any additional sh scripts found in /etc/profile.d/:
for profile_script in /etc/profile.d/*.sh ; do
    if [ -x $profile_script ]; then
        . $profile_script
    fi
done
unset profile_script
