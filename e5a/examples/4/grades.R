library(tidyverse)

grades <- read.csv("grades.csv")
grades
glimpse(grades)

distinct(grades, Student)
distinct(grades, Major)
distinct(grades, Semester)
distinct(grades, Course)

# Alternative using readr's read_csv to show functionality
grades_readr <- read_csv("grades.csv")
distinct(grades_readr, Student)
distinct(grades_readr, Major)

# Clean up strings
grades <- grades |>
  mutate(
    Student = str_squish(Student),
    Major   = str_to_title(str_squish(Major)),
    Course  = str_squish(Course)
  )

# Separate Semester into Term and Year
grades <- grades |>
  separate_wider_delim(Semester, delim = " ", names = c("Term", "Year")) |>
  mutate(Year = as.integer(Year))

# Save course names for later
courses <- distinct(grades, Course)$Course

# Pivot to wider format
grades <- pivot_wider(
  grades,
  # id_cols = c(Student, Major, Term, Year),
  names_from = Course,
  values_from = Grade
)

# Could pipeline this all together if you wanted:
# grades <- read.csv("grades.csv") |>
#   mutate(
#     Student = str_squish(Student),
#     Major   = str_to_title(str_squish(Major)),
#     Course  = str_squish(Course)
#   ) |>
#   separate_wider_delim(Semester, delim = " ", names = c("Term", "Year")) |>
#   mutate(Year = as.integer(Year)) |>
#   pivot_wider(
#     names_from = Course,
#     values_from = Grade
#   )

# Spaces in column names aren't a great idea. See how to deal with them below
# colnames(grades) <- str_replace_all(colnames(grades), " ", "_")

# Add average grade column
grades$Average <- rowMeans(grades[, courses], na.rm = TRUE)

# Alternative using dplyr
grades <- grades |>
  mutate(
    Average = rowMeans(
      select(
        ., # . refers to the data frame flowing through the pipe right now
        all_of(courses) # all_of() needed to use courses as a variable, not a column name
      ),
      na.rm = TRUE
    )
  )

# What are the average grades in each course?
grades |>
  summarise(
    bio = mean(`Intro Bio`, na.rm = TRUE),
    orgo = mean(`Organic Chem`, na.rm = TRUE),
    data = mean(`Data Structures`, na.rm = TRUE),
    alg = mean(`Linear Algebra`, na.rm = TRUE),
    hist = mean(`World History`, na.rm = TRUE),
    avg = mean(Average, na.rm = TRUE)
  )

# What about average by semester?
grades |>
  group_by(Year, Term) |>
  summarise(
    bio = mean(`Intro Bio`, na.rm = TRUE),
    orgo = mean(`Organic Chem`, na.rm = TRUE),
    data = mean(`Data Structures`, na.rm = TRUE),
    alg = mean(`Linear Algebra`, na.rm = TRUE),
    hist = mean(`World History`, na.rm = TRUE),
    avg = mean(Average, na.rm = TRUE)
  ) |>
  arrange(Year)

# Average by major as well?
grades |>
  group_by(Year, Term, Major) |>
  summarise(
    bio = mean(`Intro Bio`, na.rm = TRUE),
    orgo = mean(`Organic Chem`, na.rm = TRUE),
    data = mean(`Data Structures`, na.rm = TRUE),
    alg = mean(`Linear Algebra`, na.rm = TRUE),
    hist = mean(`World History`, na.rm = TRUE),
    avg = mean(Average, na.rm = TRUE),
    n = n()
  ) |>
  arrange(Year, Major)

# Top student per Major?
grades |>
  group_by(Major) |>
  slice_max(Average, n = 1, with_ties = FALSE) |>
  select(Major, Student, Average) |>
  arrange(Major)
