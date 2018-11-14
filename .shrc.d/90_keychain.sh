
if ! which keychain &> /dev/null; then
    return 0
fi

eval `keychain --eval id_rsa`
