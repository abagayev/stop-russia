#!/bin/bash

# get all available regions
REGION=$(doctl compute region list --no-header | grep true | awk '{print $1}' | sort -R | head -n1)

# get list of account ssh keys
KEYS=$(doctl compute ssh-key list --format=ID --no-header | tr '\n' ',')

# generate random hash for droplet name
if [[ $OSTYPE == "linux-gnu"* ]]; then
  HASH=$(date | md5sum | awk '{print $1}')
else
  HASH=$(date | md5)
  fi

doctl compute droplet create \
  --image ubuntu-20-04-x64 \
  --size s-1vcpu-1gb \
  --user-data-file userdata.sh \
  --region $REGION \
  --ssh-keys ${KEYS} \
  "stop-russia-${HASH}"
