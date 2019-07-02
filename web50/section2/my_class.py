class Dog:
    # Initialize the class
    def __init__(self, breed, good=True):
        self.breed = breed
        self.good = good
    
    # Speak!
    def bark(self):
        print("ruff")