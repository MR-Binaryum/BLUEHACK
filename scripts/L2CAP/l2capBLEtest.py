import asyncio

from bleak import *

async def main():
    
    # Scan resultss
    targets = await BleakScanner.discover()
    
    for results in targets:
        print("")
        print(" address:", results.address, "   name:", results.name)
        print(" Extracting metadata:", results.metadata)
        print("")
    
    while True:
        
        try:
            # Connect resultss and get services
            async with BleakClient(results.address) as client:
                if client.is_connected:
                    print(f"Connected to {results.name} ({results.address}) successfully!")
                else:
                    print(f"Failed to connect to {results.name} ({results.address}).")
        except Exception as e:
            print(f"Error connecting to {results.name} ({results.address}): {e}")
    
asyncio.run(main())

