#' Natural Gas Company Rates
#'
#' Natural Gas Company Financial Information as reported by FERC.
#'
#' @source http://www.ferc.gov/industries/gas/annual-charges.asp
#' @format Data frame with columns
#' \describe{
#' \item{Company}{Natural Gas Company}
#' \item{Revenue}{Annual Revenue in USD}
#' \item{Bill}{Annual Bill in USD}
#' \item{Year}{Reporting Year}
#' }
#' @examples
#'   dim(gas)
#'   head(gas)
"gas"
