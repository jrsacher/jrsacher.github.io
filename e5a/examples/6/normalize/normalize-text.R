library(stringr)

# A function to standardize text
normalize_text <- function(text) {
  if (!is.character(text)) {
    stop("Input must be a character vector.")
  }

  text <- text |>
    str_to_lower() |> # Convert to lowercase
    str_replace_all("[[:punct:]]", "") |> # Remove punctuation
    str_squish() # Remove extra white space

  return(text)
}
