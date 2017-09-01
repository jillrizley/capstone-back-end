#!/bin/bash

API="https://rocky-scrubland-71771.herokuapp.com/"
URL_PATH="/photos"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "photo": {
      "title": "'"${TITLE}"'",
      "url": "'"${URL}"'",
      "albumId": "'"${ALBUMID}"'"
    }
  }'

echo
