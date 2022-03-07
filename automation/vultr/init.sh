#!/bin/bash

if [ $1 ]; then  NUMINSTANCES=$1; else NUMINSTANCES=1; fi

# the cheapest plan for 5$/month
PLAN=vc2-1c-1gb
# Ubuntu 20.04 x64
OS=387

SCRIPT_RESPONSE=$(vultr-cli script create \
  --type boot \
  --name stop-russia \
  --script IyEvYmluL2Jhc2gNCg0KYXB0IC15IHVwZGF0ZQ0KYXB0IC15IGluc3RhbGwgZG9ja2VyLmlvDQoNCmZhbGxvY2F0ZSAtbCAxRyAvc3dhcGZpbGUgJiYgY2htb2QgNjAwIC9zd2FwZmlsZSAmJiBta3N3YXAgL3N3YXBmaWxlICYmIHN3YXBvbiAvc3dhcGZpbGUNCg0KTlVNUFJPQz01DQoNCmZvciBwcm9jIGluICQoc2VxIDEgJE5VTVBST0MpOyBkbw0KICBzY3JlZW4gLWQgLW0gZG9ja2VyIHJ1biAtdGkgLS1ybSBhYmFnYXlldi9zdG9wLXJ1c3NpYQ0KZG9uZQ0K | head -n1)
SCRIPT_RESPONSE_ARRAY=(${SCRIPT_RESPONSE// / })
SCRIPT_ID=${SCRIPT_RESPONSE_ARRAY[1]}

for ((c=1; c<=NUMINSTANCES; c++))
do
  # get a random region from the list of all available
  REGION=$(vultr-cli regions list | sort -R | head -n1 | cut -c1-3)
  NAME="stop-russia-${REGION}-$(date +%s)"

  vultr-cli instance create \
    --region $REGION \
    --plan $PLAN \
    --os $OS \
    --host $NAME \
    --label $NAME \
    --script-id $SCRIPT_ID
done
