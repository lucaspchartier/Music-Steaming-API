#!/bin/bash

curl "http://localhost:4741/artists" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
