#' Electric Company Rates Data
#'
#' Electric Company Financial Information as reported by FERC. Includes annual 
#' revenue and annual bill data from 1996 to 2014.
#' 
#' @source http://www.ferc.gov/industries/electric/annual-charges.asp
#' @format Data frame with columns
#' \describe{
#' \item{Company}{Electric Company Name}
#' \item{Revenue}{Annual Revenue in USD}
#' \item{Bill}{Annual Bill in USD}
#' \item{Year}{Reporting Year}
#' }
#' @examples
#' data(electric)
#' dim(electric)
#' head(electric)
"electric"
