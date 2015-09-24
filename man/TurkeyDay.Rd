\name{TurkeyDay}
\alias{TurkeyDay}
\title{Make a Thanksgiving caRd}
\usage{TurkeyDay(from = NULL, to = NULL, canadian = FALSE)}
\description{
Plots a Thanksgiving turkey.}
\arguments{
  \item{from}{character string}
  \item{to}{character string}
  \item{canadian}{is it Canadian Thanksgiving?}
}
\details{
The optional arguments \code{from} and \code{to} specify the sender and recipient of the caRd, respectively. The caRd can be made for Canadians by setting \code{canadian} to TRUE (defaults to FALSE).
}
\author{
Randi H. Griffin 
}
\examples{
# From Randi to America
TurkeyDay(from="Randi", to="America")

# From Randi to Canada
TurkeyDay(from="Randi", to="Canada", canadian=TRUE)
}