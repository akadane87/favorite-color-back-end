#!/bin/bash

API="http://localhost:4741"
URL_PATH="/colors"
FAVORITE="greenCURLTest"
TOKEN="BAhJIiU4NWZjZWQ3YmRhYzQwYzBmODk3MTRiYThkZGIwZjA3MQY6BkVG--59f979701ea8445f1bcdc9d81fab59b452ec2b8e"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "color": {
      "favorite": "blue"
    }
  }'

echo
