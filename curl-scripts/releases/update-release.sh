#!/bin/bash

curl "http://localhost:4741/releases/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "release": {
      "title": "'"${TITLE}"'",
      "year_released": "'"${YEAR_RELEASED}"'",
      "number_of_tracks": "'"${NUMBER_OF_TRACKS}"'"
    }
  }'

echo
