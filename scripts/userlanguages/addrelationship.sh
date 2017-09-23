#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/userlanguages"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "userlanguage": {
      "user_id": "2",
      "language_id": "2",
      "level": "NOVICE"
    }
  }'

echo
