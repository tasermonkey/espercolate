#!/bin/bash

curl -XDELETE "http://localhost:9200/test_percolate/.percolator/$1"
