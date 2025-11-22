test_that("electric dataset loads correctly", {
  expect_true(exists("electric"), info = "Dataset 'electric' should exist.")
  expect_s3_class(electric, "data.frame")
})

test_that("electric has correct columns", {
  expected_cols <- c("Company", "Revenue", "Bill", "Year")
  expect_true(all(expected_cols %in% names(electric)))
})

test_that("electric columns have correct types", {
  expect_type(electric$Company, "character")
  expect_type(electric$Revenue, "integer")
  expect_type(electric$Bill, "integer")
  expect_type(electric$Year, "integer")
})

test_that("electric has expected dimensions", {
  expect_true(nrow(electric) > 0)
  expect_equal(ncol(electric), 4)
})

test_that("electric data contains no unexpected NAs", {
  expect_true(sum(is.na(electric$Company)) == 0)
  expect_true(sum(is.na(electric$Year)) == 0)
})

