\name{pseudocpf}
\Rdversion{1.1}
\alias{pseudocpf}
\title{
  Pseudo values for the conditional probability function
}
\description{
  The function computes pseudo values and then fit a proportional-odds
  model to the conditional probability function using GEE
}
\usage{
pseudocpf(formula, data, id, subset, na.action, timepoints,
          failcode = 1, ...)
}
\arguments{
  \item{formula}{A formula object, whose terms are on the right of a ~
    operator and the response, a \code{Hist} object, on the left}
  \item{data}{A data frame in which to interpret the formula}
  \item{id}{Individual patient id}
  \item{subset}{Expression specifying that only a subset of the data set
    should be used}
  \item{na.action}{A missing data filter funtion applied to the
    model.frame, after any subset argument has been used. Default is
    \code{options()$na.action}}
  \item{timepoints}{Time points at which to compute the pseudo values}
  \item{failcode}{Integer that specifies which event is of interest}
  \item{\dots}{Other arguments for the \code{\link[geepack]{geese}}
    function}
}
\details{
  The regression model is fitted using a method based on the
  pseudo-values from a jackknife statistic constructed from the
  conditional probability curve. Then a GEE model is used on the
  pseudovalues to obtain the odds-ratios.
}
\value{
  Returns an object of class \code{pseudocpf} containing the following
  components:
  \item{fit}{A \code{geese} object}
  \item{pseudo}{The pseudo values computed at the specified time points}
  \item{timepoints}{Same as in the function call}
  \item{call}{The matched call}
}
\references{
  P.K. Andersen, J.P. Klein and S. Rosthoj (2003). Generalised Linear Models
  for Correlated Pseudo-Observations, with Applications to Multi-State
  Models. \emph{Biometrika}, 90, 15-27.
  
  J.P. Klein and P.K. Andersen (2005). Regression Modeling of Competing Risks
  Data Based on Pseudovalues of the Cumulative Incidence
  Function. \emph{Biometrics}, 61, 223-229.
}
\author{
  Arthur Allignol, \email{arthur.allignol@uni-ulm.de}
}
\note{
  Besides the estimated regression coefficients, the function returns
  the computed pseudo-values, so that one can fit a different model,
  e.g., with a different link function.
}
\seealso{
  \code{\link[geepack]{geese}}, \code{\link{summary.pseudocpf}}
}
\examples{
data(mgus)

cutoffs <- quantile(mgus$time, probs = seq(0, 1, 0.05))[-1]

### with fancy variance estimation
fit1 <- pseudocpf(Hist(time, ev) ~ age + creat, mgus, id = id,
                  timepoints = cutoffs, corstr = "independence",
                  scale.value = TRUE)
summary(fit1)

### with jackknife variance estimation
fit2 <- pseudocpf(Hist(time, ev) ~ age + creat, mgus, id = id,
                  timepoints = cutoffs, corstr = "independence",
                  scale.value = TRUE, jack = TRUE)
summary(fit2)
}
\keyword{survival}
\keyword{regression}
