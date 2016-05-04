#!/bin/bash
curl -v -XPUT 'http://localhost:9200/test_percolate?pretty' -d '{
  "mappings": {
    "thing": {
      "properties": {
        "message": {
          "type": "string"
        }
      }
    }
  }
}'
curl -v 'http://localhost:9200/_cat/indices?v'
