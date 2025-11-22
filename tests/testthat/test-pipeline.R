# tests/testthat/test-pipeline.R

test_that("pipeline dataset loads correctly", {
  expect_true(exists("pipeline"), info = "Dataset 'pipeline' should exist.")
  expect_s3_class(pipeline, "data.frame")
})

test_that("pipeline has correct columns", {
  expected_cols <- c(
    "Name", "Operator", "Type", "Pipeline", "Status",
    "Completed", "Year", "Region", "Cost",
    "Miles", "Capacity", "Diameter", "Authority", "Docket"
  )
  expect_true(all(expected_cols %in% names(pipeline)))
})

test_that("pipeline columns have reasonable types", {
  expect_type(pipeline$Name, "character")
  expect_type(pipeline$Operator, "character")
  expect_type(pipeline$Type, "character")
  expect_type(pipeline$Pipeline, "character")
  expect_type(pipeline$Status, "character")
  expect_type(pipeline$Completed, "character")
  expect_true(is.numeric(pipeline$Year))
  expect_type(pipeline$Region, "character")
  expect_type(pipeline$Cost, "integer")
  expect_type(pipeline$Miles, "integer")
  expect_type(pipeline$Capacity, "integer")
  expect_type(pipeline$Diameter, "character")  # often ranges like "24; 36"
  expect_type(pipeline$Authority, "character")
  expect_type(pipeline$Docket, "character")
})

test_that("pipeline has expected dimensions", {
  expect_true(nrow(pipeline) > 0)
  expect_equal(ncol(pipeline), 15)
})

test_that("key pipeline fields contain no unexpected NAs", {
  key_fields <- c("Name", "Operator", "Status")
  for (field in key_fields) {
    expect_true(sum(is.na(pipeline[[field]])) == 0,
                info = paste("Unexpected NAs in", field))
  }
})

