message = input("Message: ")

for c in message:
    decimal = ord(c)  # "ord" converts char to int
    binary = f"{decimal:08b}"  # "08" pads with 0 until 8 characters long; "b" formats as binary
    bulbs = binary.replace("0", "\U000026AB").replace("1", "\U0001F7E1")
    print(bulbs)
