#!/bin/bash

query=$(echo "$@" | tr ' ' '+')

curl -s "https://arxiv.org/search/?query=$query&searchtype=all" |
grep -oE '[0-9]{4}\.[0-9]{4,5}|[a-z]+/[0-9]{7}' |  

sort | uniq
