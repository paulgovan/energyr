hydropower <- read.csv("inst/extdata/hydropower.csv", 
                       stringsAsFactors = FALSE, strip.white = TRUE)
hydropower <- cbind.data.frame(hydropower, address = paste0(hydropower$Waterway, ', ', hydropower$State))
hydropower <- with(hydropower, data.frame(hydropower, t(sapply(hydropower$address, RgoogleMaps::getGeoCode))))
save(hydropower, file = "data/hydropower.rda")
