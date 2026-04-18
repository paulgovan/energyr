#' Natural Gas Company Rates Data
#'
#' Natural Gas Company Financial Information as reported by FERC. Includes annual 
#' revenue and annual bill data for various natural gas companies from 1996 to 2014.
#'
#' @source \url{https://www.ferc.gov/industries-data/natural-gas/industry-activities/natural-gas-annual-report}
#' @format Data frame with columns
#' \describe{
#' \item{Company}{Natural Gas Company}
#' \item{Revenue}{Annual Revenue in USD}
#' \item{Bill}{Annual Bill in USD}
#' \item{Year}{Reporting Year}
#' }
#' @examples
#' data(gas)
#' dim(gas)
#' head(gas)
"gas"
