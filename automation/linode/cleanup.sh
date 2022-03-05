#!/bin/bash

LABEL="stop-russia"

# Load list of linodes ID
LINODES=$(linode-cli linodes list --format 'id,label' --text --no-header |grep $LABEL |awk '{print $1}')

echo $LINODES

# Deleting all found
for i in $LINODES; do
    linode-cli linodes delete $i
done
