#!/bin/bash

CountDown(){
   i=3 
until [ $i -lt 0 ]
do
    echo starting tracking in... $i
sleep 1
    ((i--))
done
}

ping1() {
if ping -c 2 www.aruljohn.com >> /dev/null 
then 
sleep 2
echo Server Connection completed successfully...
echo ---------------------------------
CountDown
echo ---------------------------------
else echo "The connection with the server has not been completed..."
fi
}

echo
echo Checking connection of server...
ping1

i=0
while [ $i -lt 100 ]

do
sleep 0.03
echo  "TRACKING MAC address... "$i%

  ((i++))
done
echo
echo !!!MAC address TRACKED...!!!

