\name{ChristmasTree}
\alias{ChristmasTree}
\title{Make a ChristmasTree caRd}
\usage{
ChristmasTree(from = NULL, to = NULL, numPresents = 7, tinsel = FALSE)
}
\description{
Plots a jolly Christmas tree with presents underneath. 
}
\arguments{
  \item{from}{character string}
  \item{to}{character string}
  \item{numPresents}{positive integer}
  \item{tinsel}{should tinsel be added?}
}
\details{
The optional arguments \code{from} and \code{to} specify the sender and recipient of the caRd, respectively. The number of presents can be changed with the \code{numPresents} argument (the default is 7), and tinsel can be added by setting \code{tinsel} to TRUE (defaults to FALSE).
}
\author{
Randi H. Griffin and Chase L. Nunez
}
\examples{
# From Randi to Chase with 10 presents under the tree
ChristmasTree(from="Randi", to="Chase", numPresents=10)

# Same plot with tinsel
ChristmasTree(from="Randi", to="Chase", numPresents=10, tinsel=TRUE)
}