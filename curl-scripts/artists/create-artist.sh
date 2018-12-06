#!/bin/bash

curl "http://localhost:4741/artists" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "artist": {
      "name": "'"${NAME}"'",
      "year_formed": "'"${YEAR_FORMED}"'",
      "genre": "'"${GENRE}"'"
    }
  }'

echo
