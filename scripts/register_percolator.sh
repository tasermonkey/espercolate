#!/bin/bash
export MSG=$1
shift
export DEFAULT_ID=$(python  -c 'import uuid; print uuid.uuid1()')
export ID=${1:-$DEFAULT_ID}

echo "Registering '$MSG' as $ID"
curl -XPUT "http://localhost:9200/test_percolate/.percolator/$ID" -d "{
    \"query\" : {
        \"match\" : {
            \"message\" : \"$MSG\"
        }
    }
}"
echo
