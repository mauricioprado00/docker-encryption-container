#!/usr/bin/env bash

echo Waiting for inputs "$@"

for f in $(dirname $0)/commands/*.sh; do source $f; done

if [ ! -z "$(ls -A /encrypt)" ]; then
    echo "Content to encrypt:"
    ls -lah /encrypt
    cmd_encrypt
else
    if [ ! -d /decrypted ]; then 
        echo could not decrypt, missing output directory /decrypted, 
        echo please mount before proceeding.
    elif [ ! -z "$(ls -A /decrypted)" ]; then
        echo could not decrypt, make sure that directory /decrypted 
        echo is empty before proceeding
    else
        cmd_decrypt
    fi
fi
