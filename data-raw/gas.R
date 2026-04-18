## data-raw/gas.R
## FERC Form 2 – Natural Gas Company Annual Charges
##
## Source: https://www.ferc.gov/industries-data/natural-gas/industry-activities/
##         natural-gas-annual-report
##
## Manual download required. Visit the source URL above, download the annual
## charges CSV, and place it at inst/extdata/gas.csv before running this script.

gas_path <- here::here("inst", "extdata", "gas.csv")
stopifnot(file.exists(gas_path))

gas <- read.csv(
  gas_path,
  stringsAsFactors = FALSE,
  strip.white = TRUE
)

stopifnot(is.data.frame(gas))
stopifnot(all(c("Company", "Revenue", "Bill", "Year") %in% names(gas)))

usethis::use_data(gas, overwrite = TRUE)
