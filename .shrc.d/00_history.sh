#
# History
#
export HISTSIZE=10000
export HISTFILESIZE=10000

if [[ $_CURSHELL = bash ]]; then
    export HISTFILE="$HOME/.bash_history"

    # don't put duplicate lines or lines starting with space in the history.
    export HISTCONTROL=ignoreboth

    # append to the history file, don't overwrite it
    # useful for multiple shells
    shopt -s histappend

elif [[ $_CURSHELL = zsh ]]; then
    export HISTFILE="$HOME/.zsh_history"

    # bash: HISTCONTROL=ignoredups
    setopt HIST_FIND_NO_DUPS

    # bash: shopt -s histappend
    setopt inc_append_history
fi
