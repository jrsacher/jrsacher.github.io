# Read in personality test data
df <- read.delim("tests.tsv")

# Convert gender to text based on
# 0 = Unanswered, 1 = Male, 2 = Female, 3 = Other
df$gender <- factor(
  df$gender,
  levels = c(0, 1, 2, 3),
  labels = c("Unanswered", "Male", "Female", "Other")
)

# Function to calculate scores for each trait
calc_score <- function(df, letter) {
  # Identify columns that start with the given letter
  cols <- colnames(df)[startsWith(colnames(df), toupper(letter))]
  # Calculate the score as the sum of each row divided by 15
  score <- rowSums(df[, cols]) / 15
  # Round the score to 2 decimal places
  return(round(score, 2))
}

# Add scores for each trait
df$extroversion <- calc_score(df, "E")
df$neuroticism <- calc_score(df, "N")
df$agreeableness <- calc_score(df, "A")
df$conscientiousness <- calc_score(df, "C")
df$openness <- calc_score(df, "O")

# Save data to CSV
write.csv(df, "analysis.csv", row.names = FALSE)
