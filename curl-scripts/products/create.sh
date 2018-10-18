#!/bin/bash

curl "http://localhost:4741/products" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "product": {
      "prod_name": "'"${PROD_NAME}"'",
      "quantity":  "'"${QUANTITY}"'"
    }
  }'

echo


# curl --include --request POST 'http://localhost:4741/doctors' \
#   --header "Content-Type: application/json" \
#   --data '{
#     "doctor": {
#       "given_name": "'"${FIRST}"'",
#       "family_name": "'"${LAST}"'",
#       "zip_code": "'"${ZIP}"'",
#       "speciaty": "'"${SPECIATY}"'"
#     }
