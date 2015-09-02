\name{OneThousandHearts}
\alias{OneThousandHearts}
\title{Make a OneThousandHearts caRd}
\usage{
  OneThousandHearts(to = NULL, line1 = NULL, line2 = NULL, line3 = NULL, line4 = NULL)
}
\description{
  Plots 1000 tiny hearts sprinkled romantically about negative heart space. 
}
\arguments{
  \item{to}{character string}
  \item{line1}{character string}
  \item{line2}{character string}
  \item{line3}{character string}
  \item{line4}{character string}
}
\details{
If only \code{to} is specified, then the character string passed to \code{to} is displayed on line 2 and the default message "Will you be mine?" is printed on line 3 (lines 1 and 4 are empty). If any lines are specified, \code{to} is ignored and the specified lines are displayed. If no arguments are given, negative heart space will be empty. 
}
\author{
  Randi H. Griffin
}
\examples{
  # To Samara, with default message
  OneThousandHearts(to = "Samara")
  
  # Write a romantic quatrain
  OneThousandHearts(line1 = "Roses are red", line2 = "Violets are blue", line3 = "If you were a Pokemon", line4 = "I would choose you!")
}