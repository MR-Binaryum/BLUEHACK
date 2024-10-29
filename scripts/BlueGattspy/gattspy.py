import asyncio
from asyncio import *

from bleak import *

async def main():
    # Scan resultss
    targets = await BleakScanner.discover()
    print("Scanning complete. Found devices:")
    for results in targets:
        print(" address:", results.address, "   name:", results.name)
        print(" Extracting metadata:", results.metadata)
        print("")

    mac_address = input("Enter the MAC address of the device to connect to: ")
    
    for results in targets:
        if results.address == mac_address:
            try:
                async with BleakClient(results.address) as client:
                    if client.is_connected:
                        print(f"Connected to {results.name} ({results.address}) successfully!")                        
                        
                    else:
                        print(f"Failed to connect to {results.name} ({results.address}).")
            except Exception as e:
                print(f"Error connecting to {results.name} ({results.address}): {e}")
        else:
            print(f"Skipping device {results.name} ({results.address}), not the target device.")

asyncio.run(main())