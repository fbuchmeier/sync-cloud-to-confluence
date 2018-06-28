#!/bin/bash

username="$1"
password="$2"
url=https://collaboration.msi.audi.com/confluence
content_id="$3"
me=`basename "$0"`
directory=$4

# Download from gdrive
rclone copy drive: "$directory"

# Upload to confluence
for filename in "$directory"/* ; do
  if [ "$filename" == $me ] ; then
    continue
  fi
  curl -D- -u "$username":"$password"  -H "X-Atlassian-Token: nocheck" -X POST \
    -F file=@"$filename" "$url"/rest/api/content/"$content_id"/child/attachment
  status=$?
done
