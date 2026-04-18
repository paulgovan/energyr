## data-raw/hydropower.R
## FERC Hydropower Plant Information
##
## Source: https://www.ferc.gov/industries-data/hydropower/overview/
##         hydropower-licenses-and-exemptions
##
## Manual download required. Visit the source URL above, download the
## hydropower plant CSV, and place it at inst/extdata/hydropower.csv before
## running this script. Expected columns in the CSV:
##   Number, Name, Expiration, Issued, Status, Capacity, Company, Waterway, State
##
## Geocoding: uses tidygeocoder with the OSM/Nominatim provider (no API key).
## Address format: "Waterway, State". ~1030 requests at ~1 req/sec — expect
## roughly 30 minutes on first run. Results are baked into the .rda, so
## subsequent runs that skip re-geocoding are fast.

library(tidygeocoder)

hydropower_path <- here::here("inst", "extdata", "hydropower.csv")
stopifnot(file.exists(hydropower_path))

hydropower <- read.csv(
  hydropower_path,
  stringsAsFactors = FALSE,
  strip.white = TRUE
)

# Build geocoding address string (mirrors original RgoogleMaps logic)
hydropower$address <- paste0(
  trimws(hydropower$Waterway), ", ",
  trimws(hydropower$State)
)

# Geocode with OSM/Nominatim — returns a data frame with lat and long columns.
# NAs are returned for addresses that cannot be resolved (expected for some
# waterways). quiet = FALSE shows a progress bar.
geocoded <- tidygeocoder::geo(
  address      = hydropower$address,
  method       = "osm",
  full_results = FALSE,
  quiet        = FALSE
)

hydropower$lat <- geocoded$lat
hydropower$lon <- geocoded$long   # tidygeocoder returns "long", not "lon"

stopifnot(is.data.frame(hydropower))
stopifnot(all(c(
  "Number", "Name", "Expiration", "Issued", "Status",
  "Capacity", "Company", "Waterway", "State", "address", "lat", "lon"
) %in% names(hydropower)))

usethis::use_data(hydropower, overwrite = TRUE)
