if [[ ! -d $HOME/.bun ]]; then
    return 0
fi

export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
