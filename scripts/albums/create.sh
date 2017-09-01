#!/bin/bash

API="https://rocky-scrubland-71771.herokuapp.com/"
URL_PATH="/albums"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "album": {
      "title": "'"${TITLE}"'",
      "comments": "'"${COMMENTS}"'"
    }
  }'

echo
