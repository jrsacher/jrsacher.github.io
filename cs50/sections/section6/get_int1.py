import re


def get_int(prompt):
    while True:
        s = input(prompt)
        if re.search(r"^[+-]?\d+$", s):
            try:
                return int(s)
            except ValueError:
                continue


num = get_int("Number, please: ")
print(f"You entered {num:,}. Thanks!")
