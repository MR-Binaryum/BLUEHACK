import asyncio
from bleak import *


async def main():
    targets = await BleakScanner.discover()
    for results in targets:
        print("")
        print(" address:",results.address, "   name:", results.name)
        print(" Extracting metadata:",results._metadata)
        print("")
        print("")
        print(" Extracting details:",results.details)
        print("")
asyncio.run(main())




