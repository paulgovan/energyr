## data-raw/oil.R
## FERC Form 6 – Oil Pipeline Annual Charges
##
## Source: https://www.ferc.gov/industries-data/electric/general-information/
##         electric-industry-forms/form-6-annual-report
##
## Manual download required. Visit the source URL above, download the annual
## charges CSV, and place it at inst/extdata/oil.csv before running this script.

oil_path <- here::here("inst", "extdata", "oil.csv")
stopifnot(file.exists(oil_path))

oil <- read.csv(
  oil_path,
  stringsAsFactors = FALSE,
  strip.white = TRUE
)

stopifnot(is.data.frame(oil))
stopifnot(all(c("Company", "Revenue", "Bill", "Year") %in% names(oil)))

usethis::use_data(oil, overwrite = TRUE)
