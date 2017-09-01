#!/bin/sh

API="https://rocky-scrubland-71771.herokuapp.com/"
URL_PATH="/photos"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "photo": {
echo
