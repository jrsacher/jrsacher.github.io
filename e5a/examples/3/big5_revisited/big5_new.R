df <- read.delim("tests.tsv")

df$gender <- factor(
  df$gender,
  levels = c(0, 1, 2, 3),
  labels = c("Unknown", "Male", "Female", "Other"),
)

calc_score <- function(df, letter) {
  cols <- df[startsWith(colnames(df), toupper(letter))]
  score <- sum(df[cols]) / 15
  return(round(score, 2))
}

df$extroversion <- calc_score(df, "E")
df$neuroticism <- calc_score(df, "N")
df$agreeableness <- calc_score(df, "A")
df$conscientiousness <- calc_score(df, "C")
df$openness <- calc_score(df, "O")

write.csv(df, "analysis.csv", row.names = FALSE)
