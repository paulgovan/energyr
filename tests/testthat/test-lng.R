test_that("lng dataset loads correctly", {
  expect_true(exists("lng"), info = "Dataset 'lng' should exist.")
  expect_s3_class(lng, "data.frame")
})

test_that("lng has correct columns", {
  expected_cols <- c(
    "Location", "Company", "Capacity",
    "Type", "Status", "lat", "lon"
  )
  expect_true(all(expected_cols %in% names(lng)))
})

test_that("lng columns have reasonable types", {
  expect_type(lng$Location, "character")
  expect_type(lng$Company, "character")
  expect_type(lng$Capacity, "double")  # numeric Bcfd
  expect_type(lng$Type, "character")
  expect_type(lng$Status, "character")
  expect_type(lng$lat, "double")
  expect_type(lng$lon, "double")
})

test_that("lng has expected dimensions", {
  expect_true(nrow(lng) > 0)
  expect_equal(ncol(lng), 7)
})

test_that("key lng fields contain no unexpected NAs", {
  key_fields <- c("Location", "Company", "Status")
  for (field in key_fields) {
    expect_true(sum(is.na(lng[[field]])) == 0,
                info = paste("Unexpected NAs in", field))
  }
})

              
