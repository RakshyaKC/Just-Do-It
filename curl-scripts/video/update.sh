curl --include --request PATCH "http://localhost:4741/videos/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
      "video": {
        "title": "'"${TITLE}"'",
        "length_in_min": "'"${LENGTH}"'",
        "fitness": "'"${FITNESS}"'",
        "url": "'"${URL}"'"
      }
  }'
