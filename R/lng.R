#' LNG Plant Information Data
#'
#' LNG Plant Information as reported by FERC. Includes location, company name, capacity, type, and status.
#'
#' @source \url{https://www.ferc.gov/industries-data/natural-gas/overview/lng-facility-information}
#' @format Data frame with columns
#' \describe{
#' \item{Location}{Location of the LNG Plant}
#' \item{Company}{Name of the LNG Company}
#' \item{Capacity}{Capacity of the Plant in Bcfd}
#' \item{Type}{Type of LNG Plant}
#' \item{Status}{Status of Plant}
#' \item{lat}{Approximate Latitude of the Plant}
#' \item{lon}{Approximate Longitude of the Plant}
#' }
#' @examples
#' data(lng)
#' dim(lng)
#' head(lng)
"lng"
