# Oil Company Rates

Oil Company Financial Information as reported by FERC.

## Usage

``` r
oil
```

## Format

Data frame with columns

- Company:

  Oil Company

- Revenue:

  Annual Revenue in USD

- Bill:

  Annual Bill in USD

- Year:

  Reporting Year

## Source

http://www.ferc.gov/industries/oil/annual-charges.asp

## Examples

``` r
  dim(oil)
#> [1] 1103    4
  head(oil)
#>                          Company  Revenue  Bill Year
#> 1 Alpine Transportation Company  22745383 24566 2007
#> 2 Alpine Transportation Company  32344141 41768 2008
#> 3 Alpine Transportation Company  19683467 21308 2009
#> 4 Alpine Transportation Company  17501653 15657 2010
#> 5 Alpine Transportation Company  15642047 17025 2011
#> 6 Alpine Transportation Company  16424394 16041 2012
```
