#' LNG Plant Information
#'
#' LNG Plant Information as reported by FERC.
#'
#' @source http://www.ferc.gov/industries/gas/indus-act/lng.asp
#' @format Data frame with columns
#' \describe{
#' \item{lon}{Approximate Longitude of the Plant}
#' \item{lat}{Approximate Latitude of the Plant}
#' \item{Location}{Location of the Plant}
#' \item{Company}{Name of the Company}
#' \item{Capacity}{Capacity of the Plant in Bcfd}
#' \item{Type}{Type of Plant}
#' \item{Status}{Status of Plant}
#' }
#' @examples
#'   dim(lng)
#'   head(lng)
"lng"
