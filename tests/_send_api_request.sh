#!/bin/bash

curl -H "Content-type: application/json" -H "Accept: application/json" -X${TYPE} "$API/${REQ}" -d $DATA -k
#curl -H "Content-type: application/json" -H "Accept: application/json" -X${TYPE} "$API/${REQ}" -d $DATA -v
