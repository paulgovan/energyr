# energyr

## Introduction

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

``` R
install.packages("energyr")
```

Or to install the development version:

``` R
devtools::install_github('paulgovan/energyr')
```

## Data

- `electric`: Electric Company Financial Data
- `gas`: Natural Gas Company Financial Data
- `hydropower`: Hydropower Plant Data
- `lng`: LNG Plant Data
- `oil`: Oil Company Financial Data
- `pipeline`: Natural Gas Pipeline Project Data
- `storage`: Natural Gas Storage Field Data
