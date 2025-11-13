library(covr)

coverage <- file_coverage(
  source_files = "convert-temp.R",
  test_files = "test-convert-temp.R"
)

coverage
zero_coverage(coverage)
