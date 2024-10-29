# BLUEHACK

BLUEHACK its a suite tool developed to hack BLE and BC/BR bluetooth devices.

To use this hacking script you gonna need a wireless card that can support double bluetooth BLE and BC/BR stack protocols at the same time.

Currently must of computers and phones supports this double stack.

This suite tool its just finished on a 75% because there are some options on development.

###REQUERIMENTS###

You have to get installed:

bluez 

python3 

ubertooth 

w3m 

git 

bluez-hcidump 

libbluetooth-dev 

bluetooth 

python3-pip 

libglib2.0-dev 

Python3 libs:

bleak 

pybluez


Debian distributions install ---> sudo apt-get install bluez python3 ubertooth w3m git bluez-hcidump libbluetooth-dev bluetooth python3-pip libglib2.0-dev && sudo apt install python3-bleak python3-bluetooth

####Tool installation####

git clone https://github.com/MR-Binaryum/BLUEHACK.git ---> Downloads the repository.

cd BLUEHACK ---> You get access to the folder.

sudo chmod +x * -R  ----> Give permissions to all files and subfolders from folder BLUEHACK.

sudo sh BLUEHACK.sh ----> Execution of the file like super user (Root).

# BLUETOOTH STACKS png:



![BR_BC-BLE_ProtocolStack](https://github.com/user-attachments/assets/c15d5220-ac40-4496-af96-e64c86c54014)

# Bluetooth stack versions png:

![Stacks-Versions](https://github.com/user-attachments/assets/7820ea41-8146-469c-93cf-016802e2a2bb)

# BC/BR stacks png:

![BluetoothStack](https://github.com/user-attachments/assets/ac8d8e66-523d-4787-b079-b8fc656f4c51)

###############################
*Important* Tool working notes
###############################

1. For use Python scanners options don't execute the BLUEHACK.sh file with root permissions, just do it with root when you use attacks or orders from shell comands or bash scripting.
2. When you Execute without root some files, use sh (sh BLUEHACK.sh) call command... don't use bash order or similar commands.
3. On BLE devices when you use some options of GATTspy sometimes this devices appears and dissapears on scans (this happens to random security measures of BLE devices), and its usefull that you use the scripts/BlueGattspy/loopscan.py file to discover on loop the BLE devices when you are hacking BLE devices cause this script dont gonna stop of mapping the BLE devices in youre area.

Another option that you should be use its scripts/L2CAP/l2capBLEtest.py to hook pings with the device the reasons are the next:

  3.1 If you try comm with a device without this python3 L2CAP looping script you probably can connect by secs and get access but later the BLE device gonna kick out you (thanks again to the random addressing security measure).

  3.2 For now the L2CAP looping script its randomized on chose a target on every execution.
  
  3.3 If you get access on L2CAP connection some BLE devices you can discover directly and know GATT characteristics/UUIDs/Services but you can't interact with them on L2CAP and you need to have you interfaces on PScan mode (its like monitor    mode for sniffing in Bluetooth HCI interfaces).

4. Check you HCI interfaces to know if you can do some interactions that are on the tool (for example: craft serial ports to a inoperative device channel, send AT commands).
5. The big part of attacks are focused on RFCOMM stack and can work on next devices (Android phones/tablets devices,Laptops with Windows or Linux,speakers,Printers and TVs).

###############################
*Important* Knowledge notes
###############################

1. You can comm with BC/BR/EDR devices even if they aren't on discoverable Mode, when you know the MAC address of target.
2. BLE has a support between 0-78 channels, and Bluetooth devices with RFCOMM stack goes 1-30 channels.
3. Bluetooth Works on 2.4 GHz Frecuency (Take in mind if you want do some hardware jammers or hacking tricks).

![image](https://github.com/user-attachments/assets/af89eac5-60a5-420e-9170-a9637a8e347f)


   
