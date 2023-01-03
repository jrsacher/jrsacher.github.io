def print_chars(s):
    """ Prints each letter in string s 1 per line """
    for c in s:
        print(c)
    print()


def print_words(s):
    """ Prints each word in string s 1 per line """
    for word in s.split():
        print(word)
    print()


def print_substrings(s, n):
    """ Prints all length n substrings of s 1 per line """
    for i in range(len(s) - 4):
        print(s[i : i + 5])
    print()


def print_reverse(s):
    """ Prints string from right to left """
    print(s[::-1])
    print()


def print_ascii(s):
    """ Prints ascii values of each character in s separated by a space """
    for c in s:
        print(ord(c), end=" ")
    print()


s = "Hello, world! This is CS50 section."
print_chars(s)
print_words(s)
print_substrings(s, 5)
print_reverse(s)
print_ascii(s)
