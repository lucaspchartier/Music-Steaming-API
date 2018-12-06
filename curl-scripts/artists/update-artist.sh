#!/bin/bash

curl "http://localhost:4741/artists/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "artist": {
      "name": "'"${NAME}"'",
      "year_formed": "'"${YEAR_FORMED}"'",
      "genre": "'"${GENRE}"'"
    }
  }'

echo
