#!/bin/sh

echo $(cat resources.txt | head -n $(($(date +%H) + 1)) | tail -1)
