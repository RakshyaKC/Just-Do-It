curl --include --request POST "http://localhost:4741/videos/" \
  --header "Content-Type: application/json" \
  --data '{
      "video": {
        "title": "'"${TITLE}"'",
        "length_in_min": "'"${LENGTH}"'",
        "fitness": "'"${FITNESS}"'",
        "url": "'"${URL}"'"
      }
  }'
