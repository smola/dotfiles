#
# Some bootstrap that is required by other shell configurations.
#

# shellcheck shell=bash
# shellcheck disable=SC3043

_check_command() {
    local cmd
    for cmd in "${@}"; do
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

_prepend_path_if_exists() {
    local path="${1}"
    if [[ -d "${path}" ]]; then
        export PATH="${path}:${PATH}"
    fi
}

if [[ -n "${ZSH_VERSION:-}" ]]; then
    export readonly _CURSHELL=zsh
elif [[ -n "${BASH_VERSION:-}" ]]; then
    export readonly _CURSHELL=bash
else
    export readonly _CURSHELL=
fi
