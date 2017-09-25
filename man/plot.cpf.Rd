\name{plot.cpf}
\alias{plot.cpf}
\title{Plot method for cpf objects}
\description{
  A plot of conditional probability curves is produced, one for each
  strata. Pointwise confidence intervals and legend can also be
  displayed  
}
\usage{
\S3method{plot}{cpf}(x, conf.int = FALSE, mark.time = FALSE, mark = 3,
     col = 1, lty, ci.lty = 3, xlim, ylim = c(0, 1),
     xlab = "", ylab = "", bty = "n", legend = TRUE, 
     curvlab = NULL, legend.pos = NULL,
     legend.bty = "n", ...)
}
\arguments{
  \item{x}{An object of class \code{cpf}}
  \item{conf.int}{A logical indicating whether to plot a pointwise
    confidence interval. Default is FALSE}
  \item{mark.time}{Controls the labelling of the curves. If set to TRUE,
    then the curves are marked at each occurrence of a competing event}
  \item{mark}{Mark parameter which will be used to label the curve. The
    same as \code{pch}}
  \item{col}{Vector of colours for the curves}
  \item{lty}{Vector of integers specifying the line types}
  \item{ci.lty}{A vector of integer controlling the line types for the
    pointwise confidence intervals}
  \item{xlim}{x-axis limits for the plot area. Default is c(0, 1)}
  \item{ylim}{y-axis limits for the plot area}
  \item{xlab}{x-axis label}
  \item{ylab}{y-axis label}
  \item{bty}{see \code{\link{par}}}
  \item{legend}{Whether or nor draw a legend. Default is TRUE}
  \item{curvlab}{Text for legend}
  \item{legend.pos}{Position for the legend. Default is the upper left
    corner}
  \item{legend.bty}{Box type. See \code{\link{legend}}}
  \item{\dots}{Further arguments for plot}
}
\value{
  No value returned
}
\author{Arthur Allignol, \email{arthur.allignol@gmail.com}}
\seealso{\code{\link{par}}, \code{\link{cpf}}}
\examples{
data(mgus)
mgus$A <- ifelse(mgus$age < 64, 0, 1)

fit <- cpf(Hist(time, ev)~A, mgus)

plot(fit, curvlab = c("Age < 64", "Age >= 64"),
     main = "Conditional Probability of Cancer", xlab = "Years")
}
\keyword{hplot}
\keyword{survival}
