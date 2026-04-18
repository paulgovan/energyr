# Natural Gas Storage Field Information

Natural Gas Storage Field Information as reported by FERC.

## Usage

``` r
storage
```

## Format

Data frame with columns

- Company:

  Name of the Storage Company

- Field:

  Name of the Storage Field

- Reservoir:

  Name of the Storage Reservoir

- Type:

  Type of Storage Field

- County:

  County Where the Field is Located

- State:

  State Where the Field is Located

- Region:

  AGA Region Where the Field is Located

- Working:

  Working Capacity in Mcf

- Total:

  Total Capacity in Mcf

- MDD:

  Maximum Daily Delivery in McF

- address:

  Location of the Field

- lat:

  Approximate Latitude of the Field

- lon:

  Approximate Longitude of the Field

## Source

http://www.ferc.gov/industries/gas/indus-act/storage.asp

## Examples

``` r
  dim(storage)
#> [1] 223  13
  head(storage)
#>                Company              Field                Reservoir
#> 1 ANR Pipeline Company             Austin Michigan Stray Sandstone
#> 2 ANR Pipeline Company Central Charlton 1  Salina A1 Niagaran Reef
#> 3 ANR Pipeline Company     Cold Springs 1           Cold Springs 1
#> 4 ANR Pipeline Company           Goodwell Michigan Stray Sandstone
#> 5 ANR Pipeline Company    Lincoln-Freeman Michigan Stray Sandstone
#> 6 ANR Pipeline Company             Loreed       Reed City Dolomite
#>             Type   County State         Region  Working    Total    MDD
#> 1 Depleted Field  Mecosta    MI Consuming East  7000000 23083675 864000
#> 2 Depleted Field   Otsego    MI Consuming East 12900000 19000000 220000
#> 3 Depleted Field Kalkaska    MI Consuming East 15330000 19830000 200000
#> 4 Depleted Field  Newaygo    MI Consuming East 19300000 31696237 400000
#> 5 Depleted Field    Clare    MI Consuming East 17000000 35722869 400000
#> 6 Depleted Field    Clare    MI Consuming East 22000000 45710000 860000
#>        address      lat       lon
#> 1  Mecosta, MI 43.63755 -85.31682
#> 2   Otsego, MI 45.02441 -84.61368
#> 3 Kalkaska, MI 44.67805 -85.10025
#> 4  Newaygo, MI 43.51212 -85.79450
#> 5    Clare, MI 43.96887 -84.85051
#> 6    Clare, MI 43.96887 -84.85051
```
