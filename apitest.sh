#!/bin/bash



RESPONSE=`curl -s --request GET -H "Content-Type:application/json" -H "Authorization:Bearer $NewSecret_TOKEN" https://api.github.com/repos/CanarysPlayground/PartsUnlimited --data "${PAYLOAD}"`

export $RESPONSE

