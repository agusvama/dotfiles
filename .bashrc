#PS1=' ( ._.)φ__ \w > '
PS1="\[\e[38;5;79m\]\w > \e[38;5;99m[\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\e[0m
\e[30;48;5;6m( ._.)φ__\e[0m "

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
