def get_int(prompt):
    while True:
        x = input(prompt)
        try:
            n = int(x)
        except ValueError:
            continue
        return n


num = get_int("Number, please: ")
print(f"You entered {num:,}. Thanks!")

# Article on "break", "continue" and "pass":
# https://www.digitalocean.com/community/tutorials/how-to-use-break-continue-and-pass-statements-when-working-with-loops-in-python-3
