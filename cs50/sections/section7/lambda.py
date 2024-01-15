# Example of lambda ("anonymous" or unnamed) functions --
# Short, single-use functions
import csv

with open("staff_2024.csv", "r") as f:
    reader = csv.DictReader(f)
    staff = [row["name"] for row in reader]
    # Same as:
    # staff = []
    # for row in reader:
    #     staff.append(row["name"])

# Print staff list as-is
for name in staff:
    print(name)
print()

# Print sorted by first name
for name in sorted(staff):
    print(name)
print()

# Print sorted by last name
for name in sorted(staff, key=lambda s: s.split(" ")[-1]):
    print(name)

# lambda s: s.split(" ")[-1]
# is equivalent to
# def last_name(s):
#   return s.split(" ")[-1]
