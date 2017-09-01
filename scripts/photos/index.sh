#!/bin/sh

API="https://rocky-scrubland-71771.herokuapp.com/"
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
