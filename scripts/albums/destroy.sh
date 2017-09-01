#!/bin/bash

API="https://rocky-scrubland-71771.herokuapp.com/"
URL_PATH="/albums"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
