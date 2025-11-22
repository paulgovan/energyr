
<!-- README.md is generated from README.Rmd. Please edit that file -->

# energyr

<!-- badges: start -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![CRAN
status](https://www.r-pkg.org/badges/version/energyr)](https://CRAN.R-project.org/package=energyr)
[![R-CMD-check](https://github.com/paulgovan/energyr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/paulgovan/energyr/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/paulgovan/energyr/graph/badge.svg)](https://app.codecov.io/gh/paulgovan/energyr)
[![](http://cranlogs.r-pkg.org/badges/grand-total/energyr)](https://cran.r-project.org/package=energyr)
[![](http://cranlogs.r-pkg.org/badges/last-month/energyr)](https://cran.r-project.org/package=energyr)
[![](https://img.shields.io/badge/doi-10.32614/CRAN.package.energyr-green.svg)](https://doi.org/10.32614/CRAN.package.energyr)
<!-- badges: end -->

`energyr` is an R package containing data published by the United States
Federal Energy Regulatory Commission (FERC)
[ferc.gov](https://www.ferc.gov) from 1996 to 2014. The data includes
information on company finances, projects, and facilities for power
plants across the United States. The package provides functions to
access, manipulate, and analyze this data, making it easier for
researchers and analysts to study energy trends.

To explore the data in a web-based app, check out the
[eAnalytics](https://paulgovan.github.io/eAnalytics/) project.

## Installation

To install `energyr`:

    install.packages("energyr")

Or to install the development version:

    devtools::install_github('paulgovan/energyr')

## Data

- `electric`: Electric Company Financial Data
- `gas`: Natural Gas Company Financial Data
- `hydropower`: Hydropower Plant Data
- `lng`: LNG Plant Data
- `oil`: Oil Company Financial Data
- `pipeline`: Natural Gas Pipeline Project Data
- `storage`: Natural Gas Storage Field Data
