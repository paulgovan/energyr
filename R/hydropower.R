#' Hydropower Plant Information
#'
#' Hydropower Plant Information as reported by FERC.
#'
#' @source http://www.ferc.gov/industries/hydropower.asp
#' @format Data frame with columns
#' \describe{
#' \item{Number}{FERC Hydropower Plant Number}
#' \item{Name}{Name of Hydropower Plant}
#' \item{Status}{Current Status of the Plant}
#' \item{Capacity}{Capacity of the Plant in KW}
#' \item{Company}{Name of the Hydropower Company}
#' \item{Waterway}{Name of the Waterway}
#' \item{lon}{Approximate Longitude of the Plant}
#' \item{lat}{Approximate Latitude of the Plant}
#' \item{Issued}{Issue Date of the License}
#' \item{Expiration}{Expiration Date of the License}
#' }
#' @examples
#'   dim(hydropower)
#'   head(hydropower)
"hydropower"
