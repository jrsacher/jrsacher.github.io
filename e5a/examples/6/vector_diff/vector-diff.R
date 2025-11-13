# A function that subtracts vector y from vector x element-wise.
vector_diff <- function(x, y) {
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("Both inputs must be numeric vectors.")
  }
  if (length(x) != length(y)) {
    stop("Vectors must be of the same length.")
  }
  if (any(is.na(x)) || any(is.na(y))) {
    warning("NAs produced by arithmetic operation")
  }
  x - y
}
