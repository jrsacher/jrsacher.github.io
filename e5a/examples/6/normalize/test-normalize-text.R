library(testthat)
source("normalize-text.R")

test_that("normalize_text handles non-character input", {
  expect_error(normalize_text(123))
  expect_error(normalize_text(TRUE))
  expect_error(normalize_text(NA))
})

test_that("normalize_text converts to lowercase", {
  expect_equal(normalize_text("Hello World!"), "hello world")
})

test_that("normalize_text removes punctuation", {
  expect_equal(normalize_text("Hello, World!"), "hello world")
})

test_that("normalize_text removes extra whitespace", {
  expect_equal(normalize_text("  Hello    World  "), "hello world")
})

test_that("normalize_text handles vector input", {
  expect_equal(
    normalize_text(c(" Hello, World! ", " R is Great!!! ")),
    c("hello world", "r is great")
  )
})
