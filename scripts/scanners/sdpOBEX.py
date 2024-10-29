from bluetooth import *
from pprint import pprint

print("")
devices = discover_devices(duration=4)
print("Showing BC target devices...")
print("")
print(devices)
print("")

with open("services.txt", "w") as f:
    for addr in devices:
        results = find_service(address=addr)
        
    
        f.write(f"Dispositivo: {addr}\n")
        f.write("Servicios encontrados:\n")
        
    
        if results:
            for service in results:
                f.write(f" - {service}\n")
        else:
            f.write(" - No services found.\n")
        
        f.write("\n") 

print("Results has been saved on 'services.txt'.")