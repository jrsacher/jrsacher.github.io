# Synthetic dog data set created with ChatGPT 5 based on
# typical weights for the top 100 breeds from AKC data set:
# https://tmfilho.github.io/akcdata/
# Probability of dog in data set is
# (1 / sqrt(popularity)) / sum(1 / sqrt(popularity))

# Read in data
dogs <- read.csv("synthetic_dog_data.csv")
View(dogs)

# Which breeds are included in the data?
breeds <- unique(dogs$Breed)
breeds
# Display a sorted vector of breeds
sort(breeds)
# But the original is not changed
breeds
# To change, we need to reassign the output of sort()
breeds <- sort(breeds)

# Americans may prefer the weight in pounds
dogs$Weight_lbs <- dogs$Weight_kg * 2.20462
View(dogs)

# Maybe that would look better rounded to 1 decimal
dogs$Weight_lbs <- round(dogs$Weight_lbs, 1)
View(dogs)

# What is the average weight of all dogs in the data set?
mean(dogs$Weight_kg)
mean(dogs$Weight_lbs)

# What is the average weight of Golden Retrievers?
goldens <- dogs[dogs$Breed == "Golden Retriever", ]
mean(goldens$Weight_kg)
mean(goldens$Weight_lbs)

# Or we could do it in one line without creating a new data frame
mean(dogs$Weight_kg[dogs$Breed == "Golden Retriever"])
mean(dogs$Weight_lbs[dogs$Breed == "Golden Retriever"])

# How about chihuahuas?
mean(dogs$Weight_kg[dogs$Breed == "Chihuahua"])
mean(dogs$Weight_lbs[dogs$Breed == "Chihuahua"])
