 #!/bin/bash

 #### Colors ####
 
green="\033[32;1m"
yellow="\033[33;1m"
red="\033[31;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
blue="\033[34;1m"


#### Banner ####

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


 #### Variables ####

  
  Tool=xterm
  scanner=hcitool
  scanner2=bluetoothctl
  uber=ubertooth
  

 ####Menu option###


        Menuoption() {
        Banner
         echo
          echo
           echo    $purple"{"$cyan"10"$purple"}"$yellow"--"$green"BlueJacking (Send files with a message or just files Just for BC/BR devices)"
             echo    $purple"{"$cyan"11"$purple"}"$yellow"--"$green"BlueSnarfing (Exploit to dump mails,Phone numbers,messages and other data from a device)"
              echo    $purple"{"$cyan"12"$purple"}"$yellow"--"$green"BlueGATTspy (Just for BLE devices its a characteristics dumper)"
              echo    $purple"{"$cyan"13"$purple"}"$yellow"--"$green"BlueSpoof (Spoof MAC address from youre hci interface, recommended to be anonymous or spoof attacks)"
               echo    $purple"{"$cyan"14"$purple"}"$yellow"--"$green"BlueJamming (Break the comm between devices in some services of a bluetooth device)"
                echo    $purple"{"$cyan"15"$purple"}"$yellow"--"$green"BlueTracker (Track info about a BC/BR device exploiting a RFCOMM/L2CAP inoperative channel and dump UUIDS + other standar info)"
                echo    $purple"{"$cyan"16"$purple"}"$yellow"--"$green"Go to page 1 "
                echo    $purple"{"$cyan"17"$purple"}"$yellow"--"$green"Install BLUEHACK Requirements..."
                
                 echo
                            echo $purple "╭─"$green"Select Attack mode (.__.) "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 10 ];
                                        then
                                                BlueJacking

                                        elif [ $get -eq 11 ];
                                                then
                                                        BlueSnarfing

                                                elif [ $get -eq 12 ];
                                                        then
                                                                BlueGATTspy

                                                                        elif [ $get -eq 13 ];
                                                                                then

                                                                        BlueSpoof

                                                                                elif [ $get -eq 14 ];
                                                                                        then

                                                                                        BlueJamming
                                                                                        
                                                                                        elif [ $get -eq 15 ];
                                                                                        then

                                                                                        BlueTracker

                                                                                        

                                                                                elif [ $get -eq 16 ];
                                                                                then
                                                                                sh BLUEHACK.sh

                                                                                
                                                                                elif [ $get -eq 17 ];
                                                                                then
sudo apt-get install bluez python3 ubertooth w3m git bluez-hcidump libbluetooth-dev bluetooth python3-pip libglib2.0-dev && pip3 install bleak pybluez2 bluepy bluetooth

else
echo ""
echo "AAAAAAAAAAAAAAAAA my EYES :'("
sleep 1.2
FuncioRecon

fi
}


####BlueJacking###

BlueJacking(){
echo ""
echo "*Important next Bluejacking attacks only works with RFCOMM stack devices that are in discoverable mode*"
echo ""
        echo    $purple"{"$cyan"1"$purple"}"$yellow"--"$green"ShareFile to Bluetooth device"
             echo    $purple"{"$cyan"2"$purple"}"$yellow"--"$green"Send message to Bluetooth device"
              echo    $purple"{"$cyan"3"$purple"}"$yellow"--"$green"Multiple messages sending to near devices"
              echo    $purple"{"$cyan"4"$purple"}"$yellow"--"$green"Multiple files sending to near devices"   
              echo    $purple"{"$cyan"5"$purple"}"$yellow"--"$green"Back to menu"   
echo
                            echo $purple "╭─"$green"Select Attack mode (-_-) "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 1 ];
                                        then
echo ""
 sudo $Tool -e sh scripts/OBEX/Bash/OneTarget.sh & echo "Execute scripts/OBEX/Bash/request.sh without root when you get the pair on port/channel you conf."

                                
                                        elif [ $get -eq 2 ];
                                                then

                        echo ""
                        echo $purple "╭─"$green"Write the message (has to be short 3-5 words and have _ between words) (-_-) "$purple
                           read -p " ╰─$ " msg

                sudo touch $msg.txt &&
                sudo $Tool -e sh scripts/OBEX/Bash/OneTarget.sh & echo "Execute scripts/OBEX/Bash/request.sh without root when you get the pair on port/channel you conf."
                         
  

                                                elif [ $get -eq 3 ];
                                                then

                        python3 scripts/scanners/sdpOBEX.py &&
                        sudo scripts/Bash/editer.sh && 
                        sleep 2
                        echo $purple "╭─"$green"Write the message (has to be short 3-5 words and have _ between words) (-_-) "$purple
                           read -p " ╰─$ " msg
                                touch $msg.txt && mv $msg.txt hosts.txt scripts/Bash/ &&

                                echo "Now execute next command on a shell without root: scripts/Bash/highjacking"
                        
                        

                                


                                                        elif [ $get -eq 4 ];
                                                        then

                                                        echo "In develop"

                                                
       

                                                elif [ $get -eq 5 ];
                                                        then
                                                        Menuoption

                                                else
                                                echo ""
                                                echo "NIEEEEET" &&
                                                sleep 2 && clear &&
                                                BlueJacking
                  
                                                            fi    

}




BlueSnarfing(){

echo "in develop..."

}

####BlueGATTspy###

BlueGATTspy(){

echo
        echo    $purple"{"$cyan"1"$purple"}"$yellow"--"$green"Get services from a device..."
             echo    $purple"{"$cyan"2"$purple"}"$yellow"--"$green"Read hex values from characteristics..."
              echo    $purple"{"$cyan"3"$purple"}"$yellow"--"$green"Back to menu "
              echo    $purple"{"$cyan"4"$purple"}"$yellow"--"$green"Exit"
           
echo
                            echo $purple "╭─"$green"Select Attack mode (-_-) "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 1 ];
                                        then

$Tool -fg green -e less scripts/BlueGattspy/message &&

python3 scripts/BlueGattspy/gattspy.py &&

echo ""
echo "starting next entry..."
echo ""

echo "╭─Select MAC address target (-_-) "
read -p " ╰─ " target

# Function to check if a MAC address is valid
is_mac_valid() {
    # Match MAC address format XX:XX:XX:XX:XX:XX or XX-XX-XX-XX-XX-XX
    echo "$1" | grep -E -q '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    return $?  # Return status of the previous command
}

# Check if the target is valid
if ! is_mac_valid "$target"; then
    echo "Error: Invalid MAC address format. Please try again."
    exit 1
fi

for i in $(seq 1 3); do
    echo ""
    echo "Showing all char from BLE device"
    echo "----------------------------------------"
    sudo gatttool -b "$target" --char-desc
    echo ""     
    echo "Showing char from BLE device"
    echo "----------------------------------------"
    sudo gatttool -b "$target" --characteristics 
    echo ""
    echo "Showing primary char from BLE device"
    echo "----------------------------------------"
    sudo gatttool -b "$target" --primary 
        
    sleep 1

done

 
                                        elif [ $get -eq 2 ];
                                                then
                                                 

python3 scripts/BlueGattspy/read.py && python3 scripts/BlueGattspy/read2.py
       

                                                elif [ $get -eq 3 ];
                                                        then
                                                        Menuoption

                                                        elif [ $get -eq 4 ];
                                                        then
                                                        exit
                                                            fi    

}



 
####BlueSpoof###

BlueSpoof(){
echo
        echo    $purple"{"$cyan"1"$purple"}"$yellow"--"$green"Spoof MAC address from HCI interface"
              echo    $purple"{"$cyan"2"$purple"}"$yellow"--"$green"Back to menu "
              echo    $purple"{"$cyan"3"$purple"}"$yellow"--"$green"Exit"
           
echo
                            echo $purple "╭─"$green"Select Attack mode (-_-) "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 1 ];
                                        then

echo $purple "╭─"$green"Enter youre HCI interface (-_-) "$purple
                           read -p " ╰─$ " hci
echo ""
echo $purple "╭─"$green"Enter FAKE MAC (-_-) "$purple
                           read -p " ╰─$ " MAC
echo ""
echo "stoping bluetooth service..."
sleep 1
echo ""
sudo service bluetooth stop

echo "setting down $hci interface"
sleep 1
echo ""
sudo hciconfig $hci down
echo ""
echo "spoofing $hci bluetooth interface with $MAC new address."
sudo sudo $Tool -fg red -e  btmgmt public-addr $MAC
sleep 2
echo "rebooting system to apply changes"
sleep 2
sudo reboot


                                                elif [ $get -eq 2 ];
                                                        then
                                                        Menuoption

                                                        elif [ $get -eq 3 ];
                                                        then
                                                        exit
                                                            fi    

}



BlueJamming(){
echo ""
echo "For free channels you can just connect, for the rest you can play radio signals with a SDR"
echo
        echo            $purple"{"$cyan"1"$purple"}"$yellow"--"$green"Disrupt OBEX services from server side (Jamming DOS attack for server (the clients can't send files to server))"
             echo    $purple"{"$cyan"2"$purple"}"$yellow"--"$green"##Nothing for now##"
              echo    $purple"{"$cyan"3"$purple"}"$yellow"--"$green"Back to menu "
              echo    $purple"{"$cyan"4"$purple"}"$yellow"--"$green"Exit"
           echo

                            echo $purple "╭─"$green"Select Attack mode  "$purple
                           read -p " ╰─$ " get
  
                                if [ $get -eq 1 ];
                                        then
python3 scripts/OBEX/OBEXJamm.py 

                                        elif [ $get -eq 2 ];
                                                then
echo "in develop..."
        

                                                elif [ $get -eq 3 ];
                                                        then

                                                      sh BLUEHACK.sh

                                                        elif [ $get -eq 4 ];
                                                        then
echo "BYEEE >:)"  
                                                            exit
                                                      


                                                            fi    
}

####BlueTracker####

BlueTracker(){

echo "To make work this attack you need to know the no operative channels from the target and use 1 of them, to 
discover what channels are in use use BLUEHACK option 3 SDP discover, channels range used by services goes 1-30 and ports 1-255."

echo ""
echo "*NOTE* if some of this methods doesn't work to you for specific devices try first a L2CAP connection or SDP channel 
discover (Menu option 3) and try again the track"
echo ""
echo    $purple"{"$cyan"1"$purple"}"$yellow"--"$green"BC-R-TRACK (Track and get info of a BC or BR device connecting to a unoperated channel)"
echo ""
echo $purple "╭─"$green"Select track mode (.__.) "$purple
                           read -p " ╰─$ " get
        
                                        if [ $get -eq 1 ];
                                                then

sudo  scripts/Bash/exploit_track.sh

fi

}

FuncioRecon(){
Banner    
Menuoption
}     
FuncioRecon                                                  
