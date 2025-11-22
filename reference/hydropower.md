# Hydropower Plant Information

Hydropower Plant Information as reported by FERC.

## Usage

``` r
hydropower
```

## Format

Data frame with columns

- Number:

  FERC Hydropower Plant Number

- Name:

  Name of Hydropower Plant

- Expiration:

  Expiration Date of the License

- Issued:

  Issue Date of the License

- Status:

  Current Status of the Plant

- Capacity:

  Capacity of the Plant in KW

- Company:

  Name of the Hydropower Company

- Waterway:

  Name of the Waterway

- lat:

  Approximate Latitude of the Plant

- lon:

  Approximate Longitude of the Plant

## Source

http://www.ferc.gov/industries/hydropower.asp

## Examples

``` r
  dim(hydropower)
#> [1] 1030   12
  head(hydropower)
#>   Number                           Name Expiration   Issued  Status Capacity
#> 1   2088            SOUTH FEATHER POWER    3/31/09  7/21/52 Expired   104100
#> 2   2086               VERMILION VALLEY    8/31/03  9/29/53 Expired        0
#> 3   2107                            POE    9/30/03 10/26/53 Expired   142830
#> 4   2082                        KLAMATH    2/28/06  1/28/54 Expired   161338
#> 5   2105 UPPER NORTH FORK FEATHER RIVER   10/31/04  1/24/55 Expired   342628
#> 6   2174                         PORTAL    3/31/05  4/19/55 Expired    10800
#>                               Company                 Waterway State
#> 1 SOUTH FEATHER WATER AND POWER AGENC SOUTH FORK FEATHER RIVER    CA
#> 2 SOUTHERN CALIFORNIA EDISON CO  (CA)               MONO CREEK    CA
#> 3 PACIFIC GAS AND ELECTRIC CO      (C NORTH FORK FEATHER RIVER    CA
#> 4 PACIFICORP                     (OR)            KLAMATH RIVER    OR
#> 5 PACIFIC GAS AND ELECTRIC CO      (C NORTH FORK FEATHER RIVER    CA
#> 6 SOUTHERN CALIFORNIA EDISON CO  (CA)          RANCHERIA CREEK    CA
#>                        address      lat       lon
#> 1 SOUTH FORK FEATHER RIVER, CA 39.57091 -121.1799
#> 2               MONO CREEK, CA 37.44295 -118.8117
#> 3 NORTH FORK FEATHER RIVER, CA 40.15357 -121.0939
#> 4            KLAMATH RIVER, OR 41.70953 -122.9286
#> 5 NORTH FORK FEATHER RIVER, CA 40.15357 -121.0939
#> 6          RANCHERIA CREEK, CA 40.45478 -122.0296
```
