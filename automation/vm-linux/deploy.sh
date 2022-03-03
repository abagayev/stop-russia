#!/bin/bash

KEY='/home/kali/.ssh/vm-key'
HOSTS="hosts.txt"
DEPLOYMENT_SCRIPT="deploy_ubuntu.sh"
#DEPLOYMENT_SCRIPT="/usr/local/bin/git/stop-russia/automation/linux-vm/test.sh"
CONTAINERS_PER_MACHINE=5
TARGETS_URL="https://raw.githubusercontent.com/abagayev/stop-russia/main/resources.txt"

#Prepare a single VM for the deployment
#Arguments: host, key, deployment_script, key, number of replics, targets url
function deploy_vm {
    echo -e "ssh -i $2 $1 "bash -s" -- < $3 "--number" $4 "--targets-url" $5\n"
    ssh -i $2 $1 "bash -s" -- < $3 "--number" $4 "--targets-url" $5
}

function deploy_swarm {
    while read -r host; do
        deploy_vm $host $KEY $DEPLOYMENT_SCRIPT $CONTAINERS_PER_MACHINE $TARGETS_URL
    done < $HOSTS
}

deploy_swarm


