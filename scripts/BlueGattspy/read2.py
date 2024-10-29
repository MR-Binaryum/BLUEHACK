import bleak
import asyncio

async def read_characteristics(device_address):
    client = bleak.BleakClient(device_address)
    try:
        await client.connect()
        services = await client.get_services()
        for service in services.values():
            for characteristic in service.characteristics:
                print(f"Service: {service.uuid}")
                print(f"  Characteristic: {characteristic.uuid}")
                handle = characteristic.handle
                print(f"  Handle: {handle}")
                try:
                    value = await client.read_gatt_char(handle)
                    print(f"  Value: {value}")
                except Exception as e:
                    print(f"Error reading characteristic: {e}")

    except Exception as e:
        print(f"Error connecting to device: {e}")
    finally:
        await client.disconnect()

if __name__ == "__main__":
    device_address = input("Enter the MAC address or UUID of your BLE device: ")
    loop = asyncio.get_event_loop()
    loop.run_until_complete(read_characteristics(device_address))
