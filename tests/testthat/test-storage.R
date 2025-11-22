test_that("storage dataset loads correctly", {
  expect_true(exists("storage"), info = "Dataset 'storage' should exist.")
  expect_s3_class(storage, "data.frame")
})

test_that("storage has correct columns", {
  expected_cols <- c(
    "Company", "Field", "Reservoir", "Type",
    "County", "State", "Region",
    "Working", "Total", "MDD",
    "address", "lat", "lon"
  )
  expect_true(all(expected_cols %in% names(storage)))
})

test_that("storage columns have reasonable types", {
  expect_type(storage$Company, "character")
  expect_type(storage$Field, "character")
  expect_type(storage$Reservoir, "character")
  expect_type(storage$Type, "character")
  expect_type(storage$County, "character")
  expect_type(storage$State, "character")
  expect_type(storage$Region, "character")
  expect_type(storage$Working, "integer")
  expect_type(storage$Total, "integer")
  expect_type(storage$MDD, "integer")
  expect_type(storage$address, "integer")
  expect_type(storage$lat, "double")
  expect_type(storage$lon, "double")
})

test_that("storage has expected dimensions", {
  expect_true(nrow(storage) > 0)
  expect_equal(ncol(storage), 13)
})

test_that("key storage fields contain no unexpected NAs", {
  key_fields <- c("Company", "Field", "State")
  for (field in key_fields) {
    expect_true(sum(is.na(storage[[field]])) == 0,
                info = paste("Unexpected NAs in", field))
  }
})


