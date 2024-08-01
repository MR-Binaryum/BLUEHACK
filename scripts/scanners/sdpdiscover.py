from bluetooth import *
from pprint import pprint
print("")

devices = discover_devices(lookup_names=True)
print("showing BC target devices...")

print("")
print(devices)
print("")

target = input("Put the BC MAC address target: ")
print("")

results = find_service(address=target)

pprint(results)


