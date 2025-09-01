# Program to multiply 2 user-supplied numbers together

# Get numbers from user
n1 <- as.numeric(readline("First number:  "))
n2 <- as.numeric(readline("Second number: "))

result <- n1 * n2

cat(
  n1,
  "x",
  n2,
  "=",
  result
)
