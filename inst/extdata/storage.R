storage <- read.csv("inst/extdata/storage.csv", 
                       stringsAsFactors = FALSE, strip.white = TRUE)
storage = cbind.data.frame(storage, address = paste0(storage$County, ', ', storage$State))
storage <- with(storage, data.frame(storage, t(sapply(storage$address, getGeoCode))))
save(storage, file = "data/storage.rda")
