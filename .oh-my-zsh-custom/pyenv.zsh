
if [[ -d $HOME/.pyenv ]]; then
	export PATH="$HOME/.pyenv/bin:$PATH"
fi

if which pyenv &> /dev/null; then
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi
