[[ "$-" != *i* ]] && return

PS1="\[\e[1;32m\]\u\[\e[0m\]\[\e[1m\]@\[\e[1;32m\]\H\[\e[0m\]\[\e[1m\]:\[\e[1;34m\]\w\[\e[0m\]\n\$ "

[[ -f "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"
[[ -f "$HOME/.nvm/bash_completion" ]] && . "$HOME/.nvm/bash_completion"

[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

OLD_PATH="$PATH"
PATH="$HOME/.local/bin:$HOME/.opencode/bin"
while read -rd : x; do
    [[ "$x" = "$HOME/.local/bin" ]] && continue
    [[ "$x" = "$HOME/.opencode/bin" ]] && continue
    PATH="$PATH:$x"
done <<< "$OLD_PATH:"
unset OLD_PATH

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
