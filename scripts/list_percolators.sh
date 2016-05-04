#!/bin/bash

curl -XGET "http://localhost:9200/test_percolate/.percolator/_search?pretty=true&q=*:*"
