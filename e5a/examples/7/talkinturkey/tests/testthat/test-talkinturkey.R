test_that("turkeytalk() returns a character string", {
  expect_type(turkeytalk(), "character")
})

test_that("turkeytalk() includes a default phrase", {
  expect_match(turkeytalk(), "Happy Thanksgiving", fixed = TRUE)
})

test_that("turkeytalk() generates the correct turkey art", {
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
  expect_match(turkeytalk(), turkey, fixed = TRUE)
})
