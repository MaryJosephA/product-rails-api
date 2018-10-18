#!/bin/bash

curl "http://localhost:4741/examples" \
  --include \
  --request SHOW \
  --header "Authorization: Token token=${TOKEN}"

echo
