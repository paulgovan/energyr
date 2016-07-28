#' Natural Gas Storage Field Information
#'
#' Natural Gas Storage Field Information as reported by FERC.
#'
#' @source http://www.ferc.gov/industries/gas/indus-act/lng.asp
#' @format Data frame with columns
#' \describe{
#' \item{Company}{Name of the Storage Company}
#' \item{Field}{Name of the Storage Field}
#' \item{Location}{Location of the Field}
#' \item{Reservoir}{Name of the Storage Reservoir}
#' \item{Type}{Type of Storage Field}
#' \item{County}{County Where the Field is Located}
#' \item{State}{State Where the Field is Located}
#' \item{Total}{Total Capacity in Mcf}
#' \item{Working}{Working Capacity in Mcf}
#' \item{MDD} {Maximum Daily Delivery in McF}
#' \item{lat}{Approximate Latitude of the Field}
#' \item{lon}{Approximate Longitude of the Field}

#' }
#' @examples
#'   dim(storage)
#'   head(storage)
"storage"
