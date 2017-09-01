#!/bin/bash

API="https://rocky-scrubland-71771.herokuapp.com/"
URL_PATH="/photos"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "photo": {
      "title": "'"${TITLE}"'"
      "comment": "'"${COMMENT}"'"
    }
  }'

echo
