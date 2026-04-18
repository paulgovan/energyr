## data-raw/electric.R
## FERC Form 1 – Electric Company Annual Charges
##
## Source: https://www.ferc.gov/industries-data/electric/general-information/
##         electric-industry-forms/form-1-annual-report-major
##
## Manual download required. Visit the source URL above, download the annual
## charges CSV, and place it at inst/extdata/electric.csv before running
## this script.
##
## To automate future updates via data.ferc.gov, replace the read.csv() block
## below with a download.file() call once a stable dataset ID is available
## from https://data.ferc.gov.

electric_path <- here::here("inst", "extdata", "electric.csv")
stopifnot(file.exists(electric_path))

electric <- read.csv(
  electric_path,
  stringsAsFactors = FALSE,
  strip.white = TRUE
)

stopifnot(is.data.frame(electric))
stopifnot(all(c("Company", "Revenue", "Bill", "Year") %in% names(electric)))

usethis::use_data(electric, overwrite = TRUE)
