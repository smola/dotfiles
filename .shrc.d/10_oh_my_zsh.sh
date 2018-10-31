
if [[ $_CURSHELL != zsh ]]; then
    return 0
fi

if [[ ! -d $HOME/.oh-my-zsh ]]; then
    return 0
fi

export ZSH=$HOME/.oh-my-zsh

if [[ -d $HOME/.oh-my-zsh-custom ]]; then
    ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"
fi

if [[ -d $HOME/.oh-my-zsh-custom/templates/dracula ]]; then
    ZSH_THEME="dracula"
else
    ZSH_THEME="robbyrussell"
fi

plugins=(
    docker
    docker-compose
    golang
    git
)

source $ZSH/oh-my-zsh.sh
