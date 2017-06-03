#!/bin/bash

API="http://localhost:4741"
URL_PATH="/parking_spots/3"
TOKEN="BAhJIiVhZTA2OWNiNWVlNmM3MmQxODU4ZDc5M2MzZjc5NDQ1NQY6BkVG--cc2fe7715572ca18b4245b3e842ce75d4854800c"

LATITUDE="42.000"
LONGITUDE="-71.000"
NOTE="Parked for other concert"

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
