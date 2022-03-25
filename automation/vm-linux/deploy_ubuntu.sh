#!/bin/sh

function display_help {
    echo -e "-n|--number - containers number"
    echo -e "-t|--targets-url - url with targets file"
    echo -e "-h|--help - display help"
    echo -e "Usage example: ./compose.sh -n 10 -t https://raw.githubusercontent.com/abagayev/stop-russia/main/resources.txt"
}

function check_install_docker {
    if ! apt list --installed 2>/dev/NULL | grep docker;
    then
        apt-get update
        apt install -y apt-transport-https ca-certificates curl software-properties-common
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
        add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
        apt-cache policy docker-ce
        apt install -y docker-ce
        DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
        mkdir -p $DOCKER_CONFIG/cli-plugins
        curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
        chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
        docker compose version
    fi
}

function check_install_git {
    if ! apt list --installed 2>/dev/NULL | grep git;
    then
        apt-get update
        apt-get install -y git
    fi
    git clone https://github.com/abagayev/stop-russia.git
}

# Stopping all previous containers, in there are non - continue
# Code duplication from cleanup.sh, have to figure a way to include function in a remotely executed script
function docker_clean {
    docker_processes="$(docker ps -q)"
    if ! [ -z "$docker_processes" ];
    then
            docker kill $(docker ps -q)
    fi
}


# Update the number of replicas and targets url
# Argument #1
function update_compose {
    rm docker-compose.yml
    echo "curl $2 --output resources.txt"
    curl $2 --output resources.txt
    echo -e "version: \"3.9\"" >> docker-compose.yml
    echo -e "services:" >> docker-compose.yml
    echo -e "  bomber:"  >> docker-compose.yml
    echo -e "    image: abagayev/stop-russia:latest"  >> docker-compose.yml
    echo -e "    restart: always"  >> docker-compose.yml
    echo -e "    deploy:"  >> docker-compose.yml
    echo -e "      mode: replicated"  >> docker-compose.yml
    echo -e "      replicas: $1"  >> docker-compose.yml
    echo -e "    volumes:" >> docker-compose.yml
    echo -e "      - ./resources.txt:/app/resources.txt" >> docker-compose.yml
}


POSITIONAL_ARGS=()

while [[ $# -gt 0 ]]; do
  case $1 in
    -h|--help)
      display_help
      exit
      ;;
    -n|--number)
      REPLICAS_NUM="$2"
      shift # past argument
      shift # past value
      ;;
    -t|--targets-url)
      TARGETS_FILE_URL="$2"
      shift # past argument
      shift
      ;;
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift # past argument
      ;;
  esac
done

check_install_docker
check_install_git

# Moving to the compose directory
cd stop-russia/automation/compose
update_compose $REPLICAS_NUM $TARGETS_FILE_URL

# Stop running containers
docker_clean

#Starting replicas in daemon mode
echo "Starting instances..."
docker compose up -d
