
if _check_command mise; then
  if [ $_CURSHELL = bash ] || [ $_CURSHELL = zsh ]; then
    eval "$(mise activate $_CURSHELL)"
  fi
fi
