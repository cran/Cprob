\name{xyplot.cpfpo}
\Rdversion{1.1}
\alias{xyplot.cpfpo}
\title{
  'xyplot' method for object of class 'cpfpo'
}
\description{
  This function plots the results of the proportional-odds model fitted
  to the conditional probability function using \code{\link{cpfpo}}.
}
\usage{
\S3method{xyplot}{cpfpo}(x, data = NULL, conf.int = TRUE, level = 0.95,
       odds = TRUE, intercept = TRUE, ylab, xlab, lty = c(1, 3, 3),
       col = c(1, 1, 1), ...)
}
\arguments{
  \item{x}{
    An object of class \code{cpfpo}
}
  \item{data}{
    \emph{Useless}. Can be kept to NULL
}
  \item{conf.int}{
    Logical. Whether to plot pointwise confidence intervals. Default is
    TRUE
}
  \item{level}{
    Level of the pointwise confidence interval. Default is 0.95
}
  \item{odds}{
    If set to TRUE, the odds-ratios are displayed. Otherwise their logs
    are plotted. Default is TRUE
}
  \item{intercept}{
    Logical. Controls whether the intercept should also be
    displayed. Default is TRUE.
}
  \item{ylab}{
    Label for the y-axis
}
  \item{xlab}{
    Label for the x-axis
}
  \item{lty}{
    Vector of line types. Default is 1 for the odds-ratio and 3 for the
    confidence interval.
}
  \item{col}{
    A vector of colours. Default is black
}
  \item{\dots}{
    Further arguments
}
}
\value{
  The function returns a \code{trellis} object. See
  \code{\link[lattice]{xyplot}} for further details.
}
\author{
 Arthur Allignol, \email{arthur.allignol@fdm.uni-freiburg.de}
}
\seealso{
  \code{\link{cpfpo}}, \code{\link[lattice]{xyplot}}
}
\keyword{hplot}
\keyword{survival}