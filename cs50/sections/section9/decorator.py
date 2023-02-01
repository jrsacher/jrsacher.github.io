# This function returns another function!
def add_one(func):
    # "*args, **kwargs" is used in case the decorated function has arguments
    def wrapper(*args, **kwargs):
        return func(*args, **kwargs) + 1

    return wrapper  # no parentheses!


def one():
    return 1


@add_one
def decorated_one():
    return 1


# This is the same as above -- "two" is now a function that can be called
two = add_one(one)


@add_one
def number(n: int):
    return n


print(one())  # 1
print(decorated_one())  # 2
print(two())  # 2
print(number(50))  # 51
