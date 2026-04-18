#' Oil Company Rates and Revenue Data
#'
#' Oil Company Financial Information as reported by FERC. Includes annual revenue 
#' and annual bill data for oil companies from 1996 to 2014.
#'
#' @source \url{https://www.ferc.gov/industries-data/electric/general-information/electric-industry-forms/form-6-annual-report}
#' @format Data frame with columns
#' \describe{
#' \item{Company}{Oil Company}
#' \item{Revenue}{Annual Revenue in USD}
#' \item{Bill}{Annual Bill in USD}
#' \item{Year}{Reporting Year}
#' }
#' @examples
#' data(oil)
#' dim(oil)
#' head(oil)
"oil"
