echo '{
  "query": "{
    Get{
      Song (
        limit: 3
        nearText: {
          concepts: [\"rock\"],
        }
      ){
        songTitle
        artist
        genre
      }
    }
  }"
}'  | curl \
    -X POST \
    -H 'Content-Type: application/json' \
    -d @- \
    localhost:8080/v1/graphql 