# shellcheck shell=bash

if [[ $_CURSHELL != zsh ]]; then
	return 0
fi

if ! _is_interactive_shell; then
	return 0
fi

export HISTSIZE=10000
export HISTFILESIZE=10000

if [[ $_CURSHELL = zsh ]]; then
	export HISTFILE="$HOME/.zsh_history"

	# bash: HISTCONTROL=ignoredups
	setopt HIST_FIND_NO_DUPS

	# bash: shopt -s histappend
	setopt inc_append_history
fi
