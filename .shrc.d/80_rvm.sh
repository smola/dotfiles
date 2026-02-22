

if [ -d "$HOME/.rvm" ] && { [ "${_CURSHELL:-}" = "bash" ] || [ "${_CURSHELL:-}" = "zsh" ]; }; then
	export PATH="$PATH:$HOME/.rvm/bin"
	. "$HOME/.rvm/scripts/rvm"
fi
