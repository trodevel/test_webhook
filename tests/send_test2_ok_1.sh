#!/bin/bash

source config.cfg

REQ="test2"
TYPE=POST
DATA="{\"value\":5}"

source _send_api_request.sh
