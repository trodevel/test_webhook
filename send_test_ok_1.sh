#!/bin/bash

source config.cfg

REQ="test"
TYPE=GET
DATA="{\"value\":5}"

curl -H "Content-type: application/json" -H "Accept: application/json" -X${TYPE} "$API/${REQ}" -d $DATA
