# LNG Plant Information

LNG Plant Information as reported by FERC.

## Usage

``` r
lng
```

## Format

Data frame with columns

- Location:

  Location of the LNG Plant

- Company:

  Name of the LNG Company

- Capacity:

  Capacity of the Plant in Bcfd

- Type:

  Type of LNG Plant

- Status:

  Status of Plant

- lat:

  Approximate Latitude of the Plant

- lon:

  Approximate Longitude of the Plant

## Source

http://www.ferc.gov/industries/gas/indus-act/lng.asp

## Examples

``` r
  dim(lng)
#> [1] 39  7
  head(lng)
#>             Location                                                   Company
#> 1     Gulf of Mexico                                     Main Pass McMoran Exp
#> 2     Gulf of Mexico                           TORP Technology - Bienville LNG
#> 3 Corpus Christi, TX                             Cheniere - Corpus Christi LNG
#> 4         Sabine, TX                                  Cheniere/Sabine Pass LNG
#> 5      Hackberry, LA                                      Sempra - Cameron LNG
#> 6       Freeport, TX Freeport LNG Dev/Freeport LNG Expansion/FLNG Liquefaction
#>   Capacity   Type                 Status      lat       lon
#> 1      1.0 Import Not under construction       NA        NA
#> 2      1.4 Import Not under construction       NA        NA
#> 3      0.4 Import     Under construction 27.80058 -97.39638
#> 4      2.1 Export     Under construction 31.29742 -93.82482
#> 5      2.1 Export     Under construction 29.99605 -93.34210
#> 6      1.8 Export     Under construction 28.95414 -95.35966
```
