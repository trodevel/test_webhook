#!/bin/bash

source config.cfg

curl -H "Content-type: application/json" -H "Accept: application/json" -XPOST "$API/test" -d '{"value":5}'
