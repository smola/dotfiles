
if _check_command jj \
  && { [ "${_CURSHELL:-}" = "bash" ] || [ "${_CURSHELL:-}" = "zsh" ]; }; then
	eval "$(jj util completion "${_CURSHELL}")"
fi
