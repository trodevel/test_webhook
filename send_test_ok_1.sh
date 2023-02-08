#!/bin/bash

source config.cfg

REQ="test"
TYPE=GET
DATA="{\"value\":5}"

source _send_api_request.sh
