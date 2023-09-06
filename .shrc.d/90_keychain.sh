# shellcheck shell=bash

if ! _is_interactive_shell; then
    return 0
fi

if _check_command keychain; then
  # GPG-only, 1password is used for SSH instead
  eval "$(keychain --quiet --agents gpg --eval)"
fi
