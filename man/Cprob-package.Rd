\name{Cprob-package}
\alias{Cprob-package}
\alias{Cprob}
\docType{package}
\title{
Conditional probability function of a competing event
}
\description{
  Estimates the conditional probability function of a competing event,
  and fits, using the temporal process regression or the pseudo-value
  approach, a proportional-odds model to the conditional probability
  function
}
\details{
\tabular{ll}{
Package: \tab Cprob\cr
Version: \tab 1.0\cr
Depends: \tab prodlim, tpr, lattice, geepack\cr
License: \tab GPL (>=2)\cr
}

Index:
\preformatted{
cpf                     Conditional Probability Function of a Competing
                        Event
cpfpo                   Proportional-odds Model for the Conditional
                        Probability Function
lines.cpf               Lines method for 'cpf' objects
mgus                    Monoclonal Gammopathy of Undetermined
                        Significance
plot.cpf                Plot method for cpf objects
predict.cpf             Conditional Probability Estimates at chosen
                        timepoints
print.cpf               Print a cpf object
print.cpfpo             Print Method for cpfpo objects
pseudocpf               Pseudo values for the conditional probability
                        function
summary.cpf             Summary method for cpf
summary.pseudocpf       Summary method for pseudocpf objects
xyplot.cpfpo            'xyplot' method for object of class 'cpfpo'
}

The \code{cpf} function computes the conditional probability function of
a competing event and can test equality of (only) two conditional
probability curves.

A proportional-odds model for the conditional probability function can
be fitted using either \code{cpfpo} or \code{pseudocpf}. The former
function uses the temporal process regression methodology while the
latter uses the pseudo value technique.
}
\author{
Arthur Allignol

Maintainer: Arthur Allignol <arthur.allignol@gmail.com>
}
\references{
  M.S. Pepe and M. Mori, Kaplan-Meier, marginal or conditional probability curves in
  summarizing competing risks failure time data? \emph{Statistics in
    Medicine}, 12(8):737--751.

  J.P. Fine, J. Yan and M.R. Kosorok (2004). Temporal Process
  Regression, \emph{Biometrika}, 91(3):683-703.
  
  A. Allignol, A. Latouche, J. Yan and J.P. Fine (2011).  A regression
  model for the conditional probability of a competing event:
  application to monoclonal gammopathy of unknown significance.
  \emph{Journal of the Royal Statistical Society: Series C},
  60(1):135--142.

  P.K. Andersen, J.P. Klein and S. Rosthoj (2003). Generalised Linear Models
  for Correlated Pseudo-Observations, with Applications to Multi-State
  Models. \emph{Biometrika}, 90, 15-27.
  
  J.P. Klein and P.K. Andersen (2005). Regression Modeling of Competing Risks
  Data Based on Pseudovalues of the Cumulative Incidence
  Function. \emph{Biometrics}, 61, 223-229.
}
\keyword{package}
\keyword{survival}
\seealso{
\code{\link[tpr]{tpr}}
}
