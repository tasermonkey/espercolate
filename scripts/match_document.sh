#!/bin/bash

echo "Matching $1"
curl -XGET 'http://localhost:9200/test_percolate/thing/_percolate' -d "{
    \"doc\" : {
        \"message\" : \"$1\"
    }
}"
echo
