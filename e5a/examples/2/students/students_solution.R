# Student Performance — Joins, Conditions, and Logical Filters
# Goal: Join student info, grades, and attendance; handle missing/outliers;
#       and classify students using logical expressions and conditionals.

# Files:
#   - students.csv
#   - grades.csv
#   - attendance.tsv

# 1) Read all three files (note: TSV for attendance).
students <- read.csv("students.csv")
grades <- read.csv("grades.csv")
attendance <- read.delim("attendance.tsv")

# 2) Merge data frames by `student_id` (full join or left join depending on intent).
df <- merge(students, grades, by = "student_id", all = TRUE)
df <- merge(df, attendance, by = "student_id", all = TRUE)
View(df)

# A data type cleanup to make life easier
df$major <- as.factor(df$major)
df$cohort <- as.factor(df$cohort)

# 3) Use logical tests to identify anomalies:
#    - missing grades or attendance
#    - impossible scores (final > 100 or < 0, etc.)
df$anomaly <- (is.na(df$quiz) | df$quiz > 100 | df$quiz < 0) |
  (is.na(df$midterm) | df$midterm > 100 | df$midterm < 0) |
  (is.na(df$project) | df$project > 100 | df$project < 0) |
  (is.na(df$final) | df$final > 100 | df$final < 0)
View(df)

# 4) Handle anomalous values (e.g., treat missing as 0, fix impossible scores).
# Assume NAs are treated as 0
df[is.na(df)] <- 0
# Assume negative scores are set to 0 and scores > 100 are set to 100
df[df < 0] <- 0
df[df > 100] <- 100

# 5) Compute a weighted course score (20% quiz, 25% midterm, 25% project, 30% final).
df$score <- round(
  0.2 * df$quiz + 0.25 * df$midterm + 0.25 * df$project + 0.3 * df$final,
  2
)
# Alternative -- use the with() function to simplify
# with(df, 0.2 * quiz + 0.25 * midterm + 0.25 * project + 0.3 * final))
View(df)

# 6) Create pass/fail categories:
#    - Pass if score >= 60 AND attendance_pct >= 70
#    - At risk if score < 60 OR attendance_pct < 70
df$status <- ifelse(
  df$score >= 60 & df$attendance_pct >= 70,
  "Pass",
  ifelse(
    df$score < 60 | df$attendance_pct < 70,
    "At risk",
    "Check"
  )
)
View(df)

# 7) Subset to students in each category; write each subset to CSV.
pass <- subset(df, status == "Pass")
risk <- subset(df, status == "At risk")
write.csv(pass, "pass.csv", row.names = FALSE)
write.csv(risk, "at_risk.csv", row.names = FALSE)
