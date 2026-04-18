## data-raw/lng.R
## FERC LNG Plant Information
##
## Source: https://www.ferc.gov/industries-data/natural-gas/overview/
##         lng-facility-information
##
## Manual download required. Visit the source URL above, download the LNG
## plant CSV, and place it at inst/extdata/lng.csv before running this script.
## Expected columns: Location, Company, Capacity, Type, Status
##
## Geocoding: uses the Location field directly as the address string.
## ~39 OSM requests — typically completes in under 1 minute.
## Entries like "Gulf of Mexico" produce NA lat/lon (expected behaviour,
## preserved from the original dataset).

library(tidygeocoder)

lng_path <- here::here("inst", "extdata", "lng.csv")
stopifnot(file.exists(lng_path))

lng <- read.csv(
  lng_path,
  stringsAsFactors = FALSE,
  strip.white = TRUE
)

geocoded <- tidygeocoder::geo(
  address      = lng$Location,
  method       = "osm",
  full_results = FALSE,
  quiet        = FALSE
)

lng$lat <- geocoded$lat
lng$lon <- geocoded$long   # tidygeocoder returns "long", not "lon"

stopifnot(is.data.frame(lng))
stopifnot(all(c(
  "Location", "Company", "Capacity", "Type", "Status", "lat", "lon"
) %in% names(lng)))

usethis::use_data(lng, overwrite = TRUE)
