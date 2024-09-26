#!/bin/sh

if [ -z "$1" ]; then
    echo "Please provide secret"
    exit 1
fi

SECRET=$(echo -n "$1" | openssl base64)

# echo "$SECRET"

SECRET=$SECRET DISABLE_SHUTDOWN=true HTTP_REQUEST_TIMEOUT=300000 npm run build-bundle
