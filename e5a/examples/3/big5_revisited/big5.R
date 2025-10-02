df <- read.delim("tests.tsv")

df$gender <- factor(
  df$gender,
  levels = c(0, 1, 2, 3),
  labels = c("Unknown", "Male", "Female", "Other"),
)

df$extroversion <- round((df$E1 + df$E2 + df$E3) / 15, 2)
df$neuroticism <- round((df$N1 + df$N2 + df$N3) / 15, 2)
df$agreeableness <- round((df$A1 + df$A2 + df$A3) / 15, 2)
df$conscientiousness <- round((df$C1 + df$C2 + df$C3) / 15, 2)
df$openness <- round((df$O1 + df$O2 + df$O3) / 15, 2)

write.csv(df, "analysis.csv", row.names = FALSE)
