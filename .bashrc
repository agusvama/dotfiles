#PS1="\[\033[01;32m\]( ._.)φ__ \[\033[00m\] "
PS1="\[\033[38;5;79m\]\w > \[\033[38;5;99m\][\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\[\033[00m\] 
\[\033[30;48;5;6m\]( ._.)φ__\[\033[00m\] "

export PATH="$HOME/.local/bin:/usr/sbin/:$HOME/.node_modules_global/bin:$PATH"

#append any additional sh scripts found in /etc/profile.d/:
for profile_script in /etc/profile.d/*.sh ; do
    if [ -x $profile_script ]; then
        . $profile_script
    fi
done
unset profile_script
