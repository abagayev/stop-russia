#!/bin/bash

#get parameter of num droples
if [ $1 ]; then  NUMDROPLES=$1; else NUMDROPLES=1; fi

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

FILE='userdata.sh'

# Write direct target to custom setup file
if [ $2 ]; then
  FILE='userdata-direct.sh'
  COMMAND=$(printf '%s\n' "${@:2}" | sed -e 's/[\/&]/\\&/g' | tr '\n' ' ')
  sed "s/COMMAND=.*/COMMAND=\'$COMMAND\'/g" userdata.sh > userdata-direct.sh
fi

for ((c=1; c<=NUMDROPLES; c++))
do
     doctl compute droplet create \
       --image ubuntu-20-04-x64 \
       --size s-1vcpu-1gb \
       --user-data-file "$FILE" \
       --region $REGION \
       --ssh-keys "${KEYS}" \
       "stop-russia-${HASH}"
done
