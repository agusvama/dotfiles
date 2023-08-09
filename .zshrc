# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

setopt PROMPT_SUBST
# PROMPT="%F{magenta}( ._.)φ__ %1d [${vcs_info_msg_0_}]: "
PROMPT='%F{magenta}( ._.)φ__%f %B%K{white}%F{black}${PWD/#$HOME/~}%f%k%b %U%F{cyan}[${vcs_info_msg_0_}]%f%u '
