import json
import requests
import sys

# Search OpenLibrary for book information
url = f"https://openlibrary.org/search.json?q="

title = "The Lord of the Rings"
# Need to URL encode the title
title = requests.utils.quote(title)
# 'The%20Lord%20of%20the%20Rings'

# Send the request
r = requests.get(url + title)
# Check if response is OK (200)
if r.ok:
    # Convert the response JSON to a dictionary
    data = r.json()
else:
    print("Book not found.")
    sys.exit(1)

# Save the json in case you want to look at it
# Use the json library to make it nice and neat
with open("data.json", "w") as out:
    out.write(json.dumps(data, indent=2))


# print(data.keys())
# 'numFound', 'start', 'numFoundExact', 'docs', 'num_found', 'q', 'offset'

# How many results are there?
# print(data['numFound'])

# let's look into the first result
book = data['docs'][0]
# print(book)
print(f"{book['title']} by {book['author_name'][0]} was first published in {book['first_publish_year']}.")
print(f"The first sentence is: \"{book['first_sentence'][0]}\"")
