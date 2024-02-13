# This is a decorator function
def simple_decorator(func):
    # This is the wrapper function
    def wrapper():
        print("Something is happening before the function is called.")
        func()
        print("Something is happening after the function is called.")
    # Return the actual function, not the result of calling it
    return wrapper

# Use the decorator
@simple_decorator
def say_hello():
    print("Hello!")

# Call the decorated function
say_hello()
