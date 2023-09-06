#
# Startship promtp setup.
# See: https://starship.rs/
#

# shellcheck shell=bash

if ! _is_interactive_shell; then
	return 0
fi

if ! _check_command starship; then
	return 0
fi

if [[ $_CURSHELL == zsh ]]; then
	eval "$(starship init zsh)"
elif [[ $_CURSHELL == bash ]]; then
	eval "$(starship init bash)"
fi
