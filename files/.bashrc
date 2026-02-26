[[ $- != *i* ]] && return

PS1="\[\e[1;32m\]\u\[\e[0m\]\[\e[1m\]@\[\e[1;32m\]\H\[\e[0m\]\[\e[1m\]:\[\e[1;34m\]\w\[\e[0m\]\n\$ "

alias ls="ls --color"
alias grep="grep --color"
alias diff="diff --color"

[[ $SHLVL != 1 ]] && return

export PATH=$HOME/.local/bin:$PATH

export NVM_DIR=$HOME/.nvm
[[ -f $NVM_DIR/nvm.sh ]] && . $NVM_DIR/nvm.sh
[[ -f $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

[[ -f $HOME/.cargo/env ]] && . $HOME/.cargo/env
