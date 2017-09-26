#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/userlanguages"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

#ID=3 TOKEN=BAhJIiUxZTNkYjZkNTAxYTFiYWY2YzgyMDhiNjk5Y2M5ZTgxNgY6BkVG--3fa7ad6cd92a6d3acb32709cb8e6e7bbaa1adcf1 sh scripts/userlanguages/sign-out.sh
