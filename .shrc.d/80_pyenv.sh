
if [[ ! -d $HOME/.pyenv ]]; then
    return 0
fi

export PATH="$HOME/.pyenv/bin:$PATH"
if which pyenv &> /dev/null; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
