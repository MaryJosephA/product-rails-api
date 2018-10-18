#!/bin/bash

curl --include --request DELETE "http://localhost:4741/products/${ID}" \


# curl --include --request POST 'http://localhost:4741/doctors' \
#   --header "Content-Type: application/json" \
#   --data '{
#     "doctor": {
#       "given_name": "'"${FIRST}"'",
#       "family_name": "'"${LAST}"'",
#       "zip_code": "'"${ZIP}"'",
#       "speciaty": "'"${SPECIATY}"'"
#     }
