#' Electric Company Rates Data
#'
#' Electric Company Financial Information as reported by FERC. Includes annual 
#' revenue and annual bill data from 1996 to 2014.
#' 
#' @source \url{https://www.ferc.gov/industries-data/electric/general-information/electric-industry-forms/form-1-annual-report-major}
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
