pkgname <- "eAnalytics"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('eAnalytics')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("eAnalytics")
### * eAnalytics

flush(stderr()); flush(stdout())

### Name: eAnalytics
### Title: Interactive and dynamic web analytics for the energy industry.
### Aliases: eAnalytics

### ** Examples

if (interactive()) {
  eAnalytics()
}



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
