import asyncio
from bleak import *

async def read_all_characteristics(device_address):
    async with BleakClient(device_address) as client:
        # Get the services and characteristics
        services = await client.get_services()
        
        for service in services:
            print(f"Service: {service.uuid}")
            # Iterate through all characteristics in the service
            for characteristic in service.characteristics:
                print(f"  Characteristic: {characteristic.uuid}")
                
                # Attempt to read the characteristic
                if "read" in characteristic.properties:
                    try:
                        value = await client.read_gatt_char(characteristic.uuid)
                        print(f"    Value: {value.hex()}")
                    except Exception as e:
                        print(f"    Could not read characteristic: {e}")

# Main function to take user input
def main():
    # Get the MAC address from user input
    device_address = input("Enter the MAC address or UUID of your BLE device: ")

    # Run the asyncio event loop
    loop = asyncio.get_event_loop()
    loop.run_until_complete(read_all_characteristics(device_address))

# Entry point of the script
if __name__ == "__main__":
    main()
