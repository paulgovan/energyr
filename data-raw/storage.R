## data-raw/storage.R
## FERC Natural Gas Storage Field Information
##
## Source: https://www.ferc.gov/industries-data/natural-gas/overview/gas-storage
##
## Manual download required. Visit the source URL above, download the storage
## field CSV, and place it at inst/extdata/storage.csv before running this
## script. Expected columns:
##   Company, Field, Reservoir, Type, County, State, Region, Working, Total, MDD
##
## Geocoding: address is "County, State". ~223 OSM requests — typically
## completes in 5–10 minutes.

library(tidygeocoder)

storage_path <- here::here("inst", "extdata", "storage.csv")
stopifnot(file.exists(storage_path))

storage <- read.csv(
  storage_path,
  stringsAsFactors = FALSE,
  strip.white = TRUE
)

storage$address <- paste0(
  trimws(storage$County), ", ",
  trimws(storage$State)
)

geocoded <- tidygeocoder::geo(
  address      = storage$address,
  method       = "osm",
  full_results = FALSE,
  quiet        = FALSE
)

storage$lat <- geocoded$lat
storage$lon <- geocoded$long   # tidygeocoder returns "long", not "lon"

stopifnot(is.data.frame(storage))
stopifnot(all(c(
  "Company", "Field", "Reservoir", "Type", "County", "State",
  "Region", "Working", "Total", "MDD", "address", "lat", "lon"
) %in% names(storage)))

usethis::use_data(storage, overwrite = TRUE)
