#!/bin/bash

curl "http://localhost:4741/products/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "prod_name": "'"${PROD_NAME}"'",
      "quantity":  "'"${QUANTITY}"'"
    }
  }'

echo
