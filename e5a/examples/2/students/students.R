# Exercise 2: Student Performance — Joins, Conditions, and Logical Filters
# Goal: Join student info, grades, and attendance; handle missing/outliers;
#       and classify students using logical expressions and conditionals.

# Files:
#   - students.csv
#   - grades.csv
#   - attendance.tsv

# 1) Read all three files (note: TSV for attendance).

# 2) Merge data frames by `student_id` (full join or left join depending on intent).

# 3) Use logical tests to identify anomalies:
#    - missing grades or attendance
#    - impossible scores (score > 100 or < 0, etc.)

# 4) Handle anomalous values (e.g., treat missing as 0, fix impossible scores).

# 5) Compute a weighted course score (20% quiz, 25% midterm, 25% project, 30% final).
#    Use ifelse() to handle NAs (e.g., treat missing as 0 vs. drop?).

# 6) Create pass/fail column "status":
#    - "Pass" if score >= 60 AND attendance_pct >= 70
#    - "At risk" if score < 60 OR attendance_pct < 70

# 7) Subset to students in each category; write each subset to CSV.
