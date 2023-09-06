# shellcheck shell=bash

if [[ ! -d $HOME/.pyenv ]]; then
    return 0
fi

_prepend_path_if_exists "$HOME/.pyenv/bin"
if _check_command pyenv; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
