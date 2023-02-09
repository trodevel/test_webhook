#!/bin/bash

# Source: https://core.telegram.org/bots/self-signed

DOMAIN_NAME=$1

[[ -z $DOMAIN_NAME ]] && echo "ERROR: DOMAIN_NAME is not defined" && exit 1

openssl req -newkey rsa:2048 -sha256 -nodes -keyout YOURPRIVATE.key -x509 -days 365 -out YOURPUBLIC.pem -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=${DOMAIN_NAME}"
