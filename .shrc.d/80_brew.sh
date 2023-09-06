#
# Homebrew setup.
# See: https://brew.sh/
#

# shellcheck shell=bash
if [[ -f /home/linuxbrew/.linuxbrew/bin/brew ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
