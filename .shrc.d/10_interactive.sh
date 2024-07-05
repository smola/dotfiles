# shellcheck shell=bash

if ! _is_interactive_shell; then
	return 0
fi

export EDITOR=nvim

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

if [[ $TERM = xterm-kitty ]]; then
	export TERM=xterm
fi

if [[ -n $WAYLAND_DISPLAY ]]; then
	for term in foot kitty terminator xterm; do
		if _check_command $term; then
			export TERMINAL=$term
			break
		fi
	done
else
	for term in kitty terminator xterm; do
		if _check_command $term; then
			export TERMINAL=$term
			break
		fi
	done
fi

# Use bat if available, and avoid conflict
# see https://github.com/sharkdp/bat/issues/982
if command -v batcat &>/dev/null && ! command -v bat &>/dev/null; then
	alias bat='batcat'
fi
