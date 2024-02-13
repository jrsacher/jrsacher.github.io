import time

# Decorator with arguments
def timeit(repeat):
    # Outer function taking the function to be decorated
    def decorator(func):
        # Wrapper function
        # *args, **kwargs used to pass arguments to the function
        def wrapper(*args, **kwargs):
            total_time = 0
            for _ in range(repeat):
                start_time = time.time()
                result = func(*args, **kwargs)
                end_time = time.time()
                total_time += (end_time - start_time)
            avg_time = total_time / repeat
            print(f"Average execution time over {repeat} runs: {avg_time:.4f} seconds")
            return result
        return wrapper
    return decorator

# Applying the decorator with an argument
@timeit(repeat=5)
def fetch_data_simulation(delay):
    """Simulate a data fetching operation with a delay"""
    time.sleep(delay)
    return "Data fetched"

# Call the decorated function
fetch_data_simulation(1)
