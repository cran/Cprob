\name{summary.pseudocpf}
\Rdversion{1.1}
\alias{summary.pseudocpf}
\alias{print.summary.pseudocpf}
\title{
  Summary method for pseudocpf objects
}
\description{
  Summary method for \code{pseudocpf} objects
}
\usage{
\S3method{summary}{pseudocpf}(object, conf.int = 0.95, scale = 1, ...)
}
\arguments{
  \item{object}{An object of class \code{pseudocpf}}
  \item{conf.int}{Level for the two-sided confidence intervals}
  \item{scale}{Vector of scale factors for the coefficients, defaults
    to 1. The confidence limits are for the risk change associated with
    one scale unit}
  \item{\dots}{Other arguments}
}
\value{
  Returns an objet of class \code{summary.pseudocpf} that includes the
  following components:
  \item{call}{The matched call}
  \item{coefficients}{A matrix with 5 columns including the regression
    coefficients, odds-ratios, standard-errors, wald statistics and
    corresponding two-sided p-values}
  \item{conf.int}{A matrix with 4 columns that consists of the odds-ratios,
    exp(-coef) and the lower and upper bounds of the confidence
    interval}
}
\author{
  Arthur Allignol, \email{arthur.allignol@fdm.uni-freiburg.de}
}
\seealso{
  \code{\link{pseudocpf}}
}
\keyword{survival}
\keyword{print}
