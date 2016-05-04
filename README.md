# espercolate

Elastic Search Pecolate sample

## One time setup
Install, configure and setup elasticsearch

Then run, [./scripts/boostrap_elastic.sh](./scripts/boostrap_elastic.sh)

## Execute the sample

[./scripts/test_script.sh](./scripts/test_script.sh)

should output something like

```
Registering 'awesome' as e9015b87-1252-11e6-8a25-6c4008a69828
{"_index":"test_percolate","_type":".percolator","_id":"e9015b87-1252-11e6-8a25-6c4008a69828","_version":1,"_shards":{"total":2,"successful":1,"failed":0},"created":true}
Registering 'james' as e90942e1-1252-11e6-805b-6c4008a69828
{"_index":"test_percolate","_type":".percolator","_id":"e90942e1-1252-11e6-805b-6c4008a69828","_version":1,"_shards":{"total":2,"successful":1,"failed":0},"created":true}
{
  "took" : 1,
  "timed_out" : false,
  "_shards" : {
    "total" : 5,
    "successful" : 5,
    "failed" : 0
  },
  "hits" : {
    "total" : 0,
    "max_score" : null,
    "hits" : [ ]
  }
}
Matching This shall not match
{"took":1,"_shards":{"total":5,"successful":5,"failed":0},"total":0,"matches":[]}
Matching James created this
{"took":1,"_shards":{"total":5,"successful":5,"failed":0},"total":1,"matches":[{"_index":"test_percolate","_id":"e90942e1-1252-11e6-805b-6c4008a69828"}]}
Matching This is awesome
{"took":1,"_shards":{"total":5,"successful":5,"failed":0},"total":1,"matches":[{"_index":"test_percolate","_id":"e9015b87-1252-11e6-8a25-6c4008a69828"}]}
Matching James is awesome
{"took":1,"_shards":{"total":5,"successful":5,"failed":0},"total":2,"matches":[{"_index":"test_percolate","_id":"e9015b87-1252-11e6-8a25-6c4008a69828"},{"_index":"test_percolate","_id":"e90942e1-1252-11e6-805b-6c4008a69828"}]}
```
