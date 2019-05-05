#!/bin/sh

(
for i in `ls *.pub`
do
  cat $i | sed 's/"/\\"/g' | awk '{ printf "%s\\n", $0 }' 
done
) | awk '{ printf "root_authorized_keys: \"%s\"\n", $0 }' > root_authorized_keys.yml

(
for i in `ls *.pub`
do
  cat $i | awk '{ print $0 }'
done
) > authorized_keys


