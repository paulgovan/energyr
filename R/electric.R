#' Electric Company Rates
#'
#' Electric Company Financial Information as reported by FERC.
#'
#' @source http://www.ferc.gov/industries/electric/annual-charges.asp
#' @format Data frame with columns
#' \describe{
#' \item{Company}{Electric Company}
#' \item{Revenue}{Annual Revenue in USD}
#' \item{Bill}{Annual Bill in USD}
#' \item{Year}{Reporting Year}
#' }
#' @examples
#'   dim(electric)
#'   head(electric)
"electric"
