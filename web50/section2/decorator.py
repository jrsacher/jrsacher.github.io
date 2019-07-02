def one():
    return 1

print("calling 'one()'")
print(one())
print()


def add(func):
    print("inside 'add'")
    def n():
        return 1 + func()
    return n

print("calling modified 'one'")
one = add(one)
print(one())
print()


@add
def two():
    return 1

print("calling 'two()'")
print(two())
