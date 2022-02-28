#!/bin/bash

apt -y update
apt -y install docker.io

NUMPROC=5

while [ 1 -le $NUMPROC ]
do
  screen -d -m docker run -ti --rm abagayev/stop-russia
  NUMPROC=$(( $NUMPROC - 1 ))
done
