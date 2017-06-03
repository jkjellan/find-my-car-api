#!/bin/bash

API="http://localhost:4741"
URL_PATH="/parking_spots"
TOKEN="BAhJIiVlYzBlZTc2ZTFjNzg4ZDA5NDcwMmNiNjcxZmY4Zjg3YQY6BkVG--1eb62647c9e66e97cbadfcf647ddfab95bff9502"

LATITUDE="42.353"
LONGITUDE="-71.057"
NOTE="Parked for concert"
ID="1"

curl ${API}${URL_PATH} \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "parking_spot": {
      "latitude": "'"${LATITUDE}"'",
      "longitude": "'"${LONGITUDE}"'",
      "note": "'"${NOTE}"'"
    }
  }'

echo
