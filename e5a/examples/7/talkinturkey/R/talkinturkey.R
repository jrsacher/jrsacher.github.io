#' turkeytalk
#'
#' Create a turkey that can speak
#'
#' @param phrase A character string containing the phrase the turkey will say. Default is "Happy Thanksgiving!"
#' @return A character string representing a turkey saying the specified phrase.
#' @examples
#' cat(turkeytalk("Gobble gobble!"))
#' @export
# Turkey ASCII art from: https://asciiart.website/art/1943
# Manually formatted for use in R
turkeytalk <- function(phrase = "Happy Thanksgiving!") {
  turkey <- paste(
    "            _______       _\"_",
    "        _ /     |   \\_   (  .)",
    "      _/   \\     |     \\ /  > >",
    "    / \\      \\    |     /   }",
    "  /      \\     _ - -   /   }}",
    " | -  _    \\-/            )}",
    "/ _ _ _ _> \\             /",
    "|__________ \\   / /  / /",
    "             \\_/_/___/",
    "               |   |",
    "               |   |",
    "               |   |",
    "              /!\\ /!\\",
    sep = "\n"
  )

  speech_bubble <- paste0("  ", phrase, "\n")

  result <- paste(speech_bubble, turkey, sep = "\n")
  return(result)
}
