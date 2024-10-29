import bluetooth
import time


def connect_to_device(device_address, chan):
    while True:
        try:
            sock = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
            sock.connect((device_address, chan))
            print(f'Connected to {device_address} on channel chan.')

            while True:
                data = sock.recv(1024) 
                print("Data received:", data)

        except bluetooth.btcommon.BluetoothError as err:
            print(f'Error to connect: {err}. Intentando reconectar...')
            time.sleep(5) 
        finally:
            sock.close()
            print('Socket closed. reconecting...')


def main():
    print("")
    device_address = input("Enter device MAC address target: ")
    chan = int(input("Enter OBEX channel target: "))
    
    connect_to_device(device_address, chan )

if __name__ == "__main__":
    main()
