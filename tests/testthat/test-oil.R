test_that("oil dataset loads correctly", {
  expect_true(exists("oil"), info = "Dataset 'oil' should exist.")
  expect_s3_class(oil, "data.frame")
})

test_that("oil has correct columns", {
  expected_cols <- c("Company", "Revenue", "Bill", "Year")
  expect_true(all(expected_cols %in% names(oil)))
})

test_that("oil columns have correct types", {
  expect_type(oil$Company, "character")
  expect_type(oil$Revenue, "integer")
  expect_type(oil$Bill, "integer")
  expect_type(oil$Year, "integer")
})

test_that("oil has expected dimensions", {
  expect_true(nrow(oil) > 0)
  expect_equal(ncol(oil), 4)
})

test_that("oil data contains no unexpected NAs", {
  expect_true(sum(is.na(oil$Company)) == 0)
  expect_true(sum(is.na(oil$Year)) == 0)
})


