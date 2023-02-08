#!/bin/bash

HOST_URL=$1
HOST_PORT=$2

[[ -z $HOST_URL ]]  && echo "ERROR: HOST_URL is not given" && exit 1
[[ -z $HOST_PORT ]] && echo "ERROR: HOST_PORT is not given" && exit 1
[[ -z $BOT_TOKEN ]] && echo "ERROR: BOT_TOKEN is not found in evironment" && exit 1

API="https://api.telegram.org/bot${BOT_TOKEN}/setWebhook?url=${HOST_URL}:${HOST_PORT}"

curl "$API"
