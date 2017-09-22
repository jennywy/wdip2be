#!/bin/bash
# do I need this? Maybe incase I spell a language name wrong?

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/languages"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "language": {
      "name": "'"${NEW}"'"
    }
  }'

echo
# ID=1 NEW=B sh scripts/languages/patch-languages.sh
