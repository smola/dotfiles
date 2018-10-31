
if [[ ! -z ${SSH_AGENT_PID} ]]; then
    return 0
fi

if ! which keychain &> /dev/null; then
    return 0
fi

eval `keychain --eval id_rsa`
