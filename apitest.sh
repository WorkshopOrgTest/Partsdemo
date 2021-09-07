#!/bin/bash



RESPONSE=`curl -s --request GET -H "Content-Type:application/json" -H "Authorization:Bearer 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" https://api.github.com/repos/CanarysPlayground/PartsUnlimited --data "${PAYLOAD}"`

echo $RESPONSE

