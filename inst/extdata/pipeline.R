pipeline <- read.csv("inst/extdata/pipeline.csv", stringsAsFactors = FALSE, strip.white = TRUE)
save(pipeline, file = "data/pipeline.rda")
