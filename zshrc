

if [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
        if [[ $EUID == 0 ]]; then
                PROMPT="%B%F{red}%~>%f%b"
                RPROMPT="%F{red}%U%n@%m%u%f"
        else
                PROMPT="%B%F{cyan}%~>%f%b"
                RPROMPT="%F{green}%U%n@%m%u%f"
        fi
else
        if [[ $EUID == 0 ]]; then
                PROMPT="%B%F{red}%~>%f%b"
                RPROMPT="%F{red}%n@%m%f"
        else
                PROMPT="%B%F{cyan}%~>%f%b"
                RPROMPT="%F{green}%n@%m%f"
        fi
fi

HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt APPEND_HISTORY

