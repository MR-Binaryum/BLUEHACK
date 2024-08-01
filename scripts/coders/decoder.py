print(("Example: ""0x"+"hexcode" "=0x68656c6c6f"))
hex_value=input("Put the hex code with 0x to convert in ascii: ")
slicing=hex_value[2:]
converting_hexa=bytes.fromhex(slicing)
ascii_string=converting_hexa.decode()
print("The hex code in ascii is: ", ascii_string)
