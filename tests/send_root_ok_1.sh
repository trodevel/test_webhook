#!/bin/bash

source config.cfg

REQ=""
TYPE=POST
DATA="{\"value\":5}"

source _send_api_request.sh
