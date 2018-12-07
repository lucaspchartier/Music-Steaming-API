#!/bin/bash

curl "http://localhost:4741/artists/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
