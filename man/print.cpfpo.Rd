\name{print.cpfpo}
\alias{print.cpfpo}
\title{Print Method for cpfpo objects}
\description{
  A print method for an object of class \code{cpfpo}. It displays the
  results of test for non-significant effects, along with the results of
  the test for time-independent effects.
}
\usage{
\S3method{print}{cpfpo}(x, ...)
}
\arguments{
  \item{x}{An object of class \code{cpfpo}}
  \item{\dots}{Not used}
}
\value{
  An invisible list with 2 components
  \item{sig}{Results of the test on non-significant effects}
  \item{tdep}{Results of the test on the time-dependence of the effects}
  See \code{\link[tpr]{tpr.test}}
}
\author{Arthur Allignol, \email{arthur.allignol@gmail.com}
}
\seealso{\code{\link[tpr]{tpr.test}}, \code{\link{cpfpo}}}
\keyword{print}

