#!/usr/bin/env bash

shopt -s globstar

# Ensure that the CWD is set to script's location
cd "${0%/*}"
CWD=$(pwd)

#######

TAG="stop-ru"

VMs=()

echo "May take a while..."

for vm in $(gcloud compute instances list --format="value(name)")
do
	if [[ $vm = $TAG-* ]]
	then
		echo "Will delete $vm"
		VMs+=($vm)
	fi
done

# if there are Vms to delete
if (( ${#VMs[@]} ))
then
	gcloud compute instances delete --zone=asia-northeast3-a -q ${VMs[@]}
else
	echo "No VMs to delete"
fi

echo "Done!"
