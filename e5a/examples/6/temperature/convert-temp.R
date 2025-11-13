# A function to convert temperatures between Fahrenheit and Celsius
convert_temp <- function(x, to = "C") {
  if (!is.numeric(x)) stop("x must be numeric.")

  if (to == "C") {
    return((x - 32) * 5 / 9)
  }
  if (to == "F") {
    return(x * 9 / 5 + 32)
  }

  stop("Invalid 'to' argument. Only 'F' and 'C' supported.")
}
