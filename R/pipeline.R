#' Pipeline Project Information
#'
#' Natural Gas Pipeline Project Information as reported by FERC.
#'
#' @source http://www.ferc.gov/industries/gas/indus-act/pipelines.asp
#' @format Data frame with columns
#' \describe{
#' \item{Name}{Name of the Pipeline Project}
#' \item{Operator}{Name of the Pipeline Operator}
#' \item{Type}{Type of Pipeline Project}
#' \item{Pipeline}{Type of Pipeline}
#' \item{Status}{Status of the Pipeline Project}
#' \item{Completed}{Date of Project Completion}
#' \item{Year}{Year of Project Completion}
#' \item{States}{State(s) of the Pipeline Project}
#' \item{Region}{FERC Region of the Pipeline Project}
#' \item{Cost}{Cost of the Pipeline Project in USD}
#' \item{Miles}{Miles of Pipeline}
#' \item{Capacity}{Capacity of the Pipeline in MMcf/d}
#' \item{Diameter}{Diameter(s) of the Pipeline in Inches}
#' \item{Pipeline}{Intrastate or Interstate Pipeline}
#' \item{Authority}{Regulatory Authority for the Project}
#' \item{Docket}{FERC Docket Number}
#' }
#' @examples
#'   dim(pipeline)
#'   head(pipeline)
"pipeline"
