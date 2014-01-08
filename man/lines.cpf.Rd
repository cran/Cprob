\name{lines.cpf}
\Rdversion{1.1}
\alias{lines.cpf}
\title{
  Lines method for 'cpf' objects
}
\description{
  Lines method for \code{cpf} objects
}
\usage{
\S3method{lines}{cpf}(x, conf.int = FALSE, mark.time = FALSE, mark = 3,
      col = 1, lty, ci.lty = 3, ...)
}
\arguments{
  \item{x}{An object of class \code{cpf}}
  \item{conf.int}{Logical. Whether to add a pointwise confidence
    interval}
  \item{mark.time}{Controls the labelling of the curves. If set to TRUE,
    then the curves are marked at each occurrence of a competing event}
  \item{mark}{Mark paramter which will be used to label the curves. Same
    as \code{pch}}
  \item{col}{A vector of colours}
  \item{lty}{A vector specifying the line types for the curves}
  \item{ci.lty}{A vector specifying the line type for the confidence
    intervals}
  \item{\dots}{Other arguments}
}
\value{
  No value returned
}
\author{
  Arthur Allignol, \email{arthur.allignol@uni-ulm.de}
}
\seealso{
  \code{\link{plot.cpf}}
}
\keyword{hplot}
\keyword{survival}
