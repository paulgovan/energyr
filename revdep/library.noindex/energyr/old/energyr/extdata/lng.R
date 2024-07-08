lng <- read.csv("inst/extdata/lng.csv", 
                       stringsAsFactors = FALSE, strip.white = TRUE)
lng <- with(lng, data.frame(lng, t(sapply(lng$Location, RgoogleMaps::getGeoCode))))
save(lng, file = "data/lng.rda")
