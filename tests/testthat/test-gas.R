test_that("gas dataset loads correctly", {
  expect_true(exists("gas"), info = "Dataset 'gas' should exist.")
  expect_s3_class(gas, "data.frame")
})

test_that("gas has correct columns", {
  expected_cols <- c("Company", "Revenue", "Bill", "Year")
  expect_true(all(expected_cols %in% names(gas)))
})

test_that("gas columns have correct types", {
  expect_type(gas$Company, "character")
  expect_type(gas$Revenue, "double")
  expect_type(gas$Bill, "integer")
  expect_type(gas$Year, "integer")
})

test_that("gas has expected dimensions", {
  expect_true(nrow(gas) > 0)
  expect_equal(ncol(gas), 4)
})

test_that("gas data contains no unexpected NAs", {
  expect_true(sum(is.na(gas$Company)) == 0)
  expect_true(sum(is.na(gas$Year)) == 0)
})


