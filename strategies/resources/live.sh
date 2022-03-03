#!/bin/sh
# shellcheck disable=SC2162
arr=''
while read site; do
  if curl -m 10 -I "$site" 2>&1 | grep -w "200\|301"; then
    # shellcheck disable=SC2039
    arr+="$site "
  fi
done <resources.txt
echo "${arr}"