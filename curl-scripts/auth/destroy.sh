curl "http://localhost:4741/destroy" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo

# curl --include --request DELETE "http://localhost:4741/users/${ID}"
