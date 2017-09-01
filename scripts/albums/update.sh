#!/bin/bash

API="https://rocky-scrubland-71771.herokuapp.com/"
URL_PATH="/albums"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "album": {
      "title": "'"${TITLE}"'"
      "comment": "'"${COMMENT}"'"
    }
  }'

echo
