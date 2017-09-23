#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

# ID=3 TOKEN=BAhJIiVkZjY1YjVjYmY5M2RmZTZiYWNiMDljN2Y2NTk4NTFlZAY6BkVG--0ded065a8091c6d46e69f2fb4d0ae5be2da767f0 sh scripts/user.sh
