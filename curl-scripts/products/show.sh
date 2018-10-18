#!/bin/bash
curl "http://localhost:4741/products/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"





# curl --include --request POST 'http://localhost:4741/doctors' \
#   --header "Content-Type: application/json" \
#   --data '{
#     "doctor": {
#       "given_name": "'"${FIRST}"'",
#       "family_name": "'"${LAST}"'",
#       "zip_code": "'"${ZIP}"'",
#       "speciaty": "'"${SPECIATY}"'"
#     }
