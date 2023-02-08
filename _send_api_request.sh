#!/bin/bash

curl -H "Content-type: application/json" -H "Accept: application/json" -X${TYPE} "$API/${REQ}" -d $DATA
