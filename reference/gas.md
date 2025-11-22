# Natural Gas Company Rates

Natural Gas Company Financial Information as reported by FERC.

## Usage

``` r
gas
```

## Format

Data frame with columns

- Company:

  Natural Gas Company

- Revenue:

  Annual Revenue in USD

- Bill:

  Annual Bill in USD

- Year:

  Reporting Year

## Source

http://www.ferc.gov/industries/gas/annual-charges.asp

## Examples

``` r
  dim(gas)
#> [1] 1015    4
  head(gas)
#>                            Company   Revenue    Bill Year
#> 1 Algonquin Gas Transmission, LLC  330163360  634619 2007
#> 2 Algonquin Gas Transmission, LLC  365912564  628831 2008
#> 3 Algonquin Gas Transmission, LLC  351104043  649819 2009
#> 4 Algonquin Gas Transmission, LLC  388366492  727797 2010
#> 5 Algonquin Gas Transmission, LLC  531006093  959956 2011
#> 6 Algonquin Gas Transmission, LLC  615899704 1135062 2012
```
