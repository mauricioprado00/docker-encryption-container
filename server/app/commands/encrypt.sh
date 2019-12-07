#!/usr/bin/env bash

function cmd_encrypt()
{
    echo Encrypting contents of /encrypt
    echo Please provide encryption password
    cd /encrypt
    tar -zc . | openssl aes-256-cbc -e > /encrypted.tgz.enc
    echo content encrypted in container
}
