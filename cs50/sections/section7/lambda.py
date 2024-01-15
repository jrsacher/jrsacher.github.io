# Example of lambda ("anonymous" or unnamed) functions --
# Short, single-use functions

def main():
    # Print sorted by first name
    for name in sorted(STAFF):
        print(name)

    print()

    # Print sorted by last name
    for name in sorted(STAFF, key=lambda s: s.split(" ")[-1]):
        print(name)

# lambda s: s.split(" ")[-1]
# is equivalent to
# def last_name(s):
#   return s.split(" ")[-1]

STAFF = [
    "David Malan",
    "Doug Lloyd",
    "Bernie Longboy",
    "Brenda Anderson",
    "Glenn Holloway",
    "Catherine Deskur",
    "Josh Archibald",
    "Josh Sacher",
    "Tim Sampson",
    "Athena Braun",
    "Guy White",
    "Thomas Ballatore",
    "Taha Teke",
    "Haley Mosdell",
    "Shaanan Cohney",
    "Varsha Venkatasubramanian",
    "Margaret Tanzosh",
    "Ni'mah Faadlilah",
    "Bradley Ross",
    "Zad Chin",
]


if __name__ == "__main__":
    main()
