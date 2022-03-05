#!/bin/bash

# get parameter of num linodes
if [ $1 ]; then  NUMDROPLETS=$1; else NUMDROPLETS=1; fi

# set root pass
if [ $2 ]; then  ROOT_PASS=$2; else echo -e "You must set a root password\nFor example: ./init.sh 10 MyStrongPass2022" && exit 1; fi

# get list of account ssh keys
KEYS=$(linode-cli sshkeys list --text --format 'ssh_key' --no-header)

IMAGE="linode/ubuntu20.04"

linode-cli stackscripts create --label stop-russia --images $IMAGE --script stackscript.sh

STACKSCRIPT_ID=$(linode-cli stackscripts list --label stop-russia --format 'id' --text --no-header |sort -r |head -n1)

# generate random hash for linodes name
HASH=$(date | md5)

for ((c=1; c<=NUMDROPLETS; c++))
do
     # get a random region from the list of all available
     REGION=$(linode-cli regions list --format 'id' --text --no-header | sort -R | head -n1)

     linode-cli linodes create \
       --image $IMAGE \
       --root_pass $ROOT_PASS \
       --stackscript_id  $STACKSCRIPT_ID \
       --type g6-nanode-1 \
       --region $REGION \
       --label "stop-russia-${REGION}-$(date +%s)"
done
