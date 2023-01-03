from cs50 import get_int

# Use infinite loop and break
while True:
    n = get_int("Height: ")
    if n >= 1 and n <= 8:
        break

print()

# Initialize n out of bounds and use traditional while loop
n = 999
while n < 1 or n > 8:
    n = get_int("Height: ")
