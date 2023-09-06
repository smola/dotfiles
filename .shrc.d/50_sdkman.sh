#
# SDKMan setup.
# See: https://sdkman.io/
#

# shellcheck shell=bash

if [[ -d $HOME/.sdkman ]]; then
	export SDKMAN_DIR="$HOME/.sdkman"
	if [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]]; then
		# shellcheck source=/dev/null
		source "$SDKMAN_DIR/bin/sdkman-init.sh"
	fi
fi
