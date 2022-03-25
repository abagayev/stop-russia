#!/bin/bash

#Stopping all previous containers, in there are non - continue
function docker_clean {
    docker_processes="$(docker ps -q)"
    if ! [ -z "$docker_processes" ];
    then
            docker kill $(docker ps -q)
    fi
}

docker_clean

