#!/bin/bash

source config.cfg

REQ="test2"
TYPE=POST

curl -H "Content-type: application/json" -H "Accept: application/json" -X${TYPE} "$API/${REQ}" -d '{"value":5}'
