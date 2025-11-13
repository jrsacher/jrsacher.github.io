library(testthat)
source("vector-diff.R")

test_that("vector_diff computes differences correctly", {
  # Positive input
  expect_equal(vector_diff(c(5, 10, 15), c(1, 2, 3)), c(4, 8, 12))
  # Negative input
  expect_equal(vector_diff(c(-1, -2, -3), c(-1, -1, -1)), c(0, -1, -2))
  # Zero input
  expect_equal(vector_diff(c(0, 0, 0), c(0, 0, 0)), c(0, 0, 0))
})

test_that("vector_diff handles non-numeric input", {
  expect_error(vector_diff("a", c(1, 2, 3)))
  expect_error(vector_diff(c(1, 2, 3), TRUE))
  expect_error(vector_diff(NA, c(1, 2, 3)))
})

test_that("vector_diff checks for equal length", {
  expect_error(vector_diff(c(1, 2), c(1, 2, 3)))
  expect_error(vector_diff(c(1, 2, 3), c(1, 2)))
})

test_that("vector_diff handles NA values", {
  expect_warning(vector_diff(c(1, 2, NA), c(1, 2, 3)))
})
