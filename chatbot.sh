#!usr/bin/bash

input=$1
api_key="YOUR_API_KEY"
url="https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key="$api_key

response=$(curl -s "$url" \
  -H 'Content-Type: application/json' \
  -X POST \
  -d "{
    \"contents\": [
      {
        \"parts\": [
          {
            \"text\": \"${input}\"
          }
        ]
      }
    ]
  }")


echo
echo  "$response" | jq -r '.candidates[0].content.parts[0].text'

