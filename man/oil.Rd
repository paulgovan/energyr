% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oil.R
\docType{data}
\name{oil}
\alias{oil}
\title{Oil Company Rates}
\format{
Data frame with columns
\describe{
\item{Company}{Oil Company}
\item{Revenue}{Annual Revenue in USD}
\item{Bill}{Annual Bill in USD}
\item{Year}{Reporting Year}
}
}
\source{
http://www.ferc.gov/industries/oil/annual-charges.asp
}
\usage{
oil
}
\description{
Oil Company Financial Information as reported by FERC.
}
\examples{
  dim(oil)
  head(oil)
}
\keyword{datasets}
