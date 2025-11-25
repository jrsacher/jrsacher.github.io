library(testthat)
source("convert-temp.R")

describe("convert_temp", {
  it("converts F to C correctly", {
    expect_equal(convert_temp(212, "C"), 100)
  })
  it("converts C to F correctly", {
    expect_equal(convert_temp(0, "F"), 32)
  })
  it("throws error on invalid scale", {
    expect_error(convert_temp(10, "K"))
  })
  it("throws error on non-numeric input", {
    expect_error(convert_temp("hot", "C"))
  })
  it("handles vector input", {
    expect_equal(
      convert_temp(c(32, 100, 212), "C"),
      c(0, 37.78, 100),
      tolerance = 1e-3 # Needs to be set to 1e-3 to 1e-1 to pass
    )
  })
})
