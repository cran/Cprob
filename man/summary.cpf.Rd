\name{summary.cpf}
\alias{summary.cpf}
\alias{print.summary.cpf}
\title{Summary method for cpf}
\description{
  Provides a summary of a \code{cpf} object.
}
\usage{
\S3method{summary}{cpf}(object, ...)
\S3method{print}{summary.cpf}(x, ...)
}
\arguments{
  \item{object}{An object of class \code{cpf}}
  \item{x}{An object of class \code{summary.cpf}}
  \item{\dots}{Not used}
}
\value{
  A list with the following components
  \item{est}{A list of data.frame according to the covariate number of
    levels. Each data.frame contains conditional probability estimates,
    variance estimates, number of individual at risk at each event
    times, number of events for the event of interest, number of
    competing events, and the event times.}
  \item{call}{Call that produced the \code{cpf} object}
  \item{X}{Covariate's name and levels}
  \item{z, p}{Test statistic and p value}
}
\author{arthur allignol, \email{arthur.allignol@uni-ulm.de}}
\seealso{\code{\link{cpf}}}
\keyword{survival}
\keyword{print}

