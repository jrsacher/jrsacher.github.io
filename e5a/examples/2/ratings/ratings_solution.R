# Movie Ratings & Menu (Starter)
# Datasets:
#   - netflix_ratings.csv  (title,rating,service = Netflix)
#   - disney_ratings.tsv   (title,rating,service = Disney+)
# Concepts to practice: combining sources (rbind), menus (readline), escape characters, conditionals

# 1) Load both files
netflix <- read.csv("netflix_ratings.csv")
disney <- read.table("disney_ratings.tsv", sep = "\t", header = TRUE)

# 2) Combine into one data frame (keep duplicates if title appears in both)
ratings <- rbind(netflix, disney)

# 3) Add a 'quality' column via ifelse (>= 8.0 -> Highly Rated; else Average)
ratings$quality <- ifelse(ratings$rating >= 8.0, "Highly Rated", "Average")

# 4) Build a simple text menu for unique titles and print info for the selected title
titles <- sort(unique(ratings$title))
formatted_titles <- paste0(1:length(titles), ") ", titles)
cat("Choose a movie by number:\n")
cat(formatted_titles, sep = "\n")
choice <- as.integer(readline(prompt = "Enter a number: "))

if (is.na(choice) || choice < 1 || choice > length(titles)) {
  cat("Invalid choice\n")
} else {
  selected_title <- titles[choice]
  print(subset(ratings, title == selected_title))
}
