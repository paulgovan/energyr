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
#> 1      1.0 Import Not under construction 25.28345 -89.90662
#> 2      1.4 Import Not under construction 25.28345 -89.90662
#> 3      0.4 Import     Under construction 27.76353 -97.40332
#> 4      2.1 Export     Under construction 31.33255 -93.87222
#> 5      2.1 Export     Under construction 29.99210 -93.36474
#> 6      1.8 Export     Under construction 28.94968 -95.34614
```
