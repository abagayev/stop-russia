#!/bin/sh

# select target based on current hour
echo $(cat resources.txt | head -n $(($(date +%H) + 1)) | tail -1)
