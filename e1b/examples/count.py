# Counts to 10 million and times it
# Printing out every 1 million
# Type "python count.py" to run the program

from time import time

# Record the start time
start = time()
# Set our max number for counting
n = 10_000_000
# Loop through each number between 1 and n
for i in range(n):
    # "%" is "modulo" -- the remainder after division
    if i % (n / 10) == 0:
        # Show us where we are in the loop
        print(i)
# Record the end time
end = time()
# See how long it took
print(f"Time in Python: {end - start:.4} seconds")
