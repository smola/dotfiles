#
# Some bootstrap that is required by other shell configurations.
#

# shellcheck shell=bash
# shellcheck disable=SC3043

_check_command() {
    for cmd in "$@"; do
        if ! command -v "${cmd}" >/dev/null 2>&1; then
            return 1
        fi
    done
    return 0
}

_is_interactive_shell() {
    case $- in
    *i*) return 0 ;;
    *) return 1 ;;
    esac
}

_append_path_if_exists() {
    path=${1}
    if [ -d "${path}" ]; then
        PATH="${PATH}:${path}"
        export PATH
    fi
}

_prepend_path_if_exists() {
    path=${1}
    if [ -d "${path}" ]; then
        PATH="${path}:${PATH}"
        export PATH
    fi
}

if [ -n "${ZSH_VERSION:-}" ]; then
    _CURSHELL=zsh
elif [ -n "${BASH_VERSION:-}" ]; then
    _CURSHELL=bash
else
    _CURSHELL=
fi

readonly _CURSHELL
export _CURSHELL
