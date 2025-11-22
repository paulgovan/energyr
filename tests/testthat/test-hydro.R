test_that("hydropower dataset loads correctly", {
  expect_true(exists("hydropower"), info = "Dataset 'hydropower' should exist.")
  expect_s3_class(hydropower, "data.frame")
})

test_that("hydropower has correct columns", {
  expected_cols <- c(
    "Number", "Name", "Expiration", "Issued", "Status",
    "Capacity", "Company", "Waterway", "lat", "lon"
  )
  expect_true(all(expected_cols %in% names(hydropower)))
})

test_that("hydropower columns have reasonable types", {
  expect_type(hydropower$Number, "integer")
  expect_type(hydropower$Name, "character")
  expect_type(hydropower$Expiration, "character")
  expect_type(hydropower$Issued, "character")
  expect_type(hydropower$Status, "character")
  expect_type(hydropower$Capacity, "integer")
  expect_type(hydropower$Company, "character")
  expect_type(hydropower$Waterway, "character")
  expect_type(hydropower$lat, "double")
  expect_type(hydropower$lon, "double")
})

test_that("hydropower has expected dimensions", {
  expect_true(nrow(hydropower) > 0)
  expect_equal(ncol(hydropower), 12)
})

test_that("key hydropower fields contain no unexpected NAs", {
  # These fields should almost always be present
  key_fields <- c("Number", "Name", "Status", "Company")
  for (field in key_fields) {
    expect_true(sum(is.na(hydropower[[field]])) == 0,
                info = paste("Unexpected NAs in", field))
  }
})

