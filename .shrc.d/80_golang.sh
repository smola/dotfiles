
if ! which go &> /dev/null; then
    if [[ ! -e /usr/local/go/bin/go ]]; then
        return 0
    else
        export PATH="$PATH:/usr/local/go/bin"
    fi
fi

if [[ ! -d $HOME/dev/go ]]; then
    mkdir -p "$HOME/dev/go"
fi

export GOPATH="$HOME/dev/go"
export PATH="$PATH:$GOPATH/bin"
