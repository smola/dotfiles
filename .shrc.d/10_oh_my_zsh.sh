
if [[ $_CURSHELL != zsh ]]; then
    return 0
fi

if [[ ! -d $HOME/.oh-my-zsh ]]; then
    return 0
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

if [[ -d $HOME/.oh-my-zsh-custom ]]; then
    ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"


    if [[ -d $ZSH_CUSTOM/themes/dracula ]]; then
        ZSH_THEME="dracula"
    fi
fi

plugins=(
    docker
    docker-compose
    golang
    git
    history
)

source $ZSH/oh-my-zsh.sh
