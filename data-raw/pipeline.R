## data-raw/pipeline.R
## FERC Natural Gas Pipeline Project Information
##
## Source: https://www.ferc.gov/industries-data/natural-gas/overview/
##         natural-gas-pipeline-certificates
##
## Manual download required. Visit the source URL above, download the pipeline
## project CSV, and place it at inst/extdata/pipeline.csv before running
## this script.

pipeline_path <- here::here("inst", "extdata", "pipeline.csv")
stopifnot(file.exists(pipeline_path))

pipeline <- read.csv(
  pipeline_path,
  stringsAsFactors = FALSE,
  strip.white = TRUE
)

stopifnot(is.data.frame(pipeline))
stopifnot(all(c(
  "Name", "Operator", "Type", "Status", "Completed", "Year",
  "Region", "Cost", "Miles", "Capacity", "Diameter",
  "Pipeline", "Authority", "Docket"
) %in% names(pipeline)))

usethis::use_data(pipeline, overwrite = TRUE)
