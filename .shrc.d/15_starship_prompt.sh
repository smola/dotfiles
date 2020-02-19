
if ! which starship &> /dev/null; then
    return 0
fi

if [[ $_CURSHELL == zsh ]]; then
    eval "$(starship init zsh)"
elif [[ $_CURSHELL == bash ]]; then
    eval "$(starship init bash)"
fi