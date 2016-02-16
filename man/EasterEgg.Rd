\name{EasterEgg}
\alias{EasterEgg}
\title{Make an Easter caRd}
\usage{EasterEgg(from = NULL, to = NULL, shell = "aliceblue")}
\description{
Plots an Easter egg with a baby chicken inside.}
\arguments{
  \item{from}{character string}
  \item{to}{character string}
  \item{shell}{what color should the shell be?}
}
\details{
The optional arguments \code{from} and \code{to} specify the sender and recipient of the caRd, respectively. Let the eggshell be any color you want by setting \code{shell} to any valid R color (defaults to aliceblue).
}
\author{
Randi H. Griffin 
}
\examples{
# A skyblue Easter egg to nobody in particular
EasterEgg(shell = "skyblue")
}