## data-raw/update_all.R
## Master pipeline — sources all dataset scripts in sequence.
##
## Usage (from package root):
##   source("data-raw/update_all.R")
##   # or from a terminal: Rscript data-raw/update_all.R
##
## Prerequisites:
##   install.packages(c("here", "tidygeocoder", "usethis"))
##
## Each source CSV must be present in inst/extdata/ before running.
## See each script's header comment for the FERC download URL.
##
## Run times (approximate):
##   electric, gas, oil, pipeline  <5 sec each
##   lng                           ~1 min  (~39 OSM geocode calls)
##   storage                       ~10 min (~223 OSM geocode calls)
##   hydropower                    ~30 min (~1030 OSM geocode calls)

scripts <- c(
  "data-raw/electric.R",
  "data-raw/gas.R",
  "data-raw/oil.R",
  "data-raw/pipeline.R",
  "data-raw/lng.R",
  "data-raw/storage.R",
  "data-raw/hydropower.R"
)

results <- list()

for (script in scripts) {
  message("\n=== Running: ", script, " ===")
  results[[script]] <- tryCatch(
    {
      source(script, echo = FALSE)
      list(status = "OK", error = NULL)
    },
    error = function(e) list(status = "ERROR", error = conditionMessage(e))
  )
  if (results[[script]]$status == "ERROR")
    warning("Script failed: ", script, "\n  Error: ", results[[script]]$error)
}

message("\n=== Update Summary ===")
for (s in names(results)) {
  r <- results[[s]]
  message(sprintf("  %-8s %s", r$status, s))
}
