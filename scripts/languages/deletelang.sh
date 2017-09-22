#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/languages"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json"

echo

#ID=1 sh scripts/languages/deletelang.sh
