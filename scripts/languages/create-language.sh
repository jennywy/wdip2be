#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/languages"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "language": {
      "name": "'"${NAME}"'"
    }
  }'

echo
#NAME=A sh scripts/languages/create-language.sh
