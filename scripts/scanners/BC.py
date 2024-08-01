import bluetooth
from bluetooth import *
from pprint import *

print("")
print("showing BC target devices...")
print("")

devices = bluetooth.discover_devices(duration=4, lookup_names=True, lookup_class=True)

for device in devices:
        
        print("Device Name:",device[1])
        print("Device Address:",device[0])    
        print("Device class:",device[2])
        print("")