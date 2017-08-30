#!/bin/sh

API="http://localhost:4741"
URL_PATH="/photos"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "photo": {
      "albumId": "'"${ALBUMID}"'"
    }
  }'

echo
