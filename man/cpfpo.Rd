\name{cpfpo}
\alias{cpfpo}
\title{Proportional-odds Model for the Conditional Probability Function}
\description{
  This function uses the Temporal Process Regression framework to fit a
  proportional-odds model to the conditional probability function.
}
\usage{
cpfpo(formula, data, subset, na.action, failcode, tis, w, ...)
}
\arguments{
  \item{formula}{A formula object whose response, on the left of a ~
    operator, is a \code{Hist} object, and the terms on the right of ~}
  \item{data}{A data.frame in which to interpret the variable names in
    the formula and subset}
  \item{subset}{Expression specifying that only a subset of the data set
    should be used}
  \item{na.action}{A missing data filter funtion applied to the
    model.frame, after any subset argument has been used. Default is
    \code{options()$na.action}}
  \item{failcode}{Integer specifying the code for the event of interest}
  \item{tis}{Vector of timepoints on which the model is fitted}
  \item{w}{Vector of weights. Should be of the same length as
    \code{tis}. Default is \code{rep(1, length(tis))}}
  \item{\dots}{Further arguments for \code{\link[tpr]{tpr}}}
}
\details{
  The conditional probability function of a competing event is the
  probability of having failed due to one risk (the event of interest) given
  that no other failure has previously occurred.

  The \code{cpfpo} function fits a proportional-odds model for the
  conditional probability function within the Temporal Process
  Regression framework, which is a marginal mean model, where the mean
  of a response \eqn{Y(t)}{Y(t)} at time \eqn{t}{t} is specified
  conditionally on a vector of covariates \eqn{Z}{Z} and a
  time-dependent stratification factor \eqn{S(t)}{S(t)}
  \deqn{E\{Y(t) | Z, S(t) = 1\} = g^{-1}\{\beta(t)'Z\}}{%
    E{Y(t) | Z, S(t) = 1} = g^(-1){beta(t)'Z}}
  This approach enables the application of standard binary regression
  models in continuous time.

  The regression model is fitted using the \pkg{tpr} package. See
  \code{\link[tpr]{tpr}} for further details.
}
\value{
  \code{cpfpo} returns an object of class \code{cpfpo} and
  \code{\link[tpr]{tpr}}. See
  \code{\link[tpr]{tpr}} for further details.
}
\references{
  J.P. Fine, J. Yan and M.R. Kosorok (2004). Temporal Process
  Regression, \emph{Biometrika}, 91(3):683-703.

  M.S. Pepe and M. Mori, Kaplan-Meier, marginal or conditional
  probability curves in summarizing competing risks failure time data?
  \emph{Statistics in Medicine}, 12(8):737--751.

  A. Allignol, A. Latouche, J. Yan and J.P. Fine (2011).  A regression
  model for the conditional probability of a competing event:
  application to monoclonal gammopathy of unknown significance.
  \emph{Journal of the Royal Statistical Society: Series C},
  60(1):135--142.
}
\author{Arthur Allignol, \email{arthur.allignol@uni-ulm.de}}
\note{
  As the returned value is also a \code{tpr} object, all the methods
  defined in the \pkg{tpr} package are available.
}
\seealso{\code{\link[tpr]{tpr}}, \code{\link{print.cpfpo}},
  \code{\link{xyplot.cpfpo}}}
\examples{
data(mgus)
mgus$A <- ifelse(mgus$age < 64, 0, 1)

## fit the model for 2 covariates
fit.cpfpo <- cpfpo(Hist(time, ev)~factor(A) + creat,
                   data = mgus, tis=seq(10, 30, 0.3),
                   w=rep(1,67))
## and plot the odds-ratios
if(require("lattice")) {
xyplot(fit.cpfpo, scales = list(relation = "free"), layout = c(3, 1))
}
}
\keyword{survival}
\keyword{regression}
