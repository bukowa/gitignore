#!/bin/bash 
 \
find . | git check-ignore --no-index  --stdin | xargs -n1 -t "$@"