#!/usr/bin/env bash

function cmd_decrypt()
{
    if [ ! -f /encrypted.tgz.enc ]; then
        echo could not find encrypted file in /encrypted.tgz.enc
        return
    fi
    
    echo Decrypting contents of /encrypted.tgz.enc
    echo Please provide encryption password
    cd /decrypted
    cat /encrypted.tgz.enc | openssl aes-256-cbc -d | tar -zxv
    echo content decrypted to mounted volume in /decrypted
}
