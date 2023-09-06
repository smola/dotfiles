#!/usr/bin/env bash

if [[ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]]; then
	# shellcheck source=/dev/null
	. "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi
