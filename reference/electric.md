# Electric Company Rates

Electric Company Financial Information as reported by FERC.

## Usage

``` r
electric
```

## Format

Data frame with columns

- Company:

  Electric Company

- Revenue:

  Annual Revenue in USD

- Bill:

  Annual Bill in USD

- Year:

  Reporting Year

## Source

http://www.ferc.gov/industries/electric/annual-charges.asp

## Examples

``` r
  dim(electric)
#> [1] 543   4
  head(electric)
#>                   Company  Revenue    Bill Year
#> 1 AEP Texas North Company  1025802   46974 2007
#> 2 AEP Texas North Company      304      15 2008
#> 3 AEP Texas North Company        0       0 2009
#> 4   Alabama Power Company 30124612 1379477 2007
#> 5   Alabama Power Company 28721945 1404710 2008
#> 6   Alabama Power Company 29953339 1633368 2009
```
