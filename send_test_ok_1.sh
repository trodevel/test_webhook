#!/bin/bash

source config.cfg

REQ="test"
TYPE=GET

curl -H "Content-type: application/json" -H "Accept: application/json" -X${TYPE} "$API/${REQ}" -d '{"value":5}'
