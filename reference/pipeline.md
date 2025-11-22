# Pipeline Project Information

Natural Gas Pipeline Project Information as reported by FERC.

## Usage

``` r
pipeline
```

## Format

Data frame with columns

- Name:

  Name of the Pipeline Project

- Operator:

  Name of the Pipeline Operator

- Type:

  Type of Pipeline Project

- Pipeline:

  Type of Pipeline

- Status:

  Status of the Pipeline Project

- Completed:

  Date of Project Completion

- Year:

  Year of Project Completion

- States:

  State(s) of the Pipeline Project

- Region:

  FERC Region of the Pipeline Project

- Cost:

  Cost of the Pipeline Project in USD

- Miles:

  Miles of Pipeline

- Capacity:

  Capacity of the Pipeline in MMcf/d

- Diameter:

  Diameter(s) of the Pipeline in Inches

- Pipeline:

  Intrastate or Interstate Pipeline

- Authority:

  Regulatory Authority for the Project

- Docket:

  FERC Docket Number

## Source

http://www.ferc.gov/industries/gas/indus-act/pipelines.asp

## Examples

``` r
  dim(pipeline)
#> [1] 947  15
  head(pipeline)
#>                              Name                                 Operator
#> 1   North Slope to Central Alaska                             Enstar/ANGDA
#> 2        Utica Ohio River Project Regency Energy Partners /American Energy
#> 3     North Elko Pipeline Project                      Prospector Pipeline
#> 4 Lebanon lateral project phase 2                             ANR Pipeline
#> 5         Ryckman Storage Lateral                                         
#> 6             North-South Project                      Southern California
#>           Type    Status Completed Year State    Region Cost Miles Capacity
#> 1 New Pipeline Announced             NA    AK    Alaska 3800   700      460
#> 2    Expansion Announced             NA    OH Northeast  500    52     2100
#> 3      Lateral Announced             NA    NV   Western   NA    24       NA
#> 4     reversal Announced             NA IN,OH Northeast   NA    NA      290
#> 5      Lateral   Applied             NA    WY   Central   NA     4       NA
#> 6 New Pipeline Announced             NA    CA   Western  629    90       NA
#>   Diameter   Pipeline Authority  Docket
#> 1   24,20  Intrastate     State      na
#> 2       36 Interstate      FERC      na
#> 3       12 Intrastate     State      na
#> 4          Interstate      FERC      na
#> 5    16,20 Interstate      FERC PF10-18
#> 6          Intrastate     State      na
```
