\name{cpf}
\alias{cpf}
\alias{[.cpf}
\title{Conditional Probability Function of a Competing Event}
\description{
  This function computes estimates of the conditional probability
  function of a competing event and its variance. It also tests equality
  of conditional probability functions in two samples.}
\usage{
cpf(formula, data, subset, na.action, conf.int = 0.95, failcode)
}
\arguments{
  \item{formula}{A formula object that has a \code{Hist} object on the
    left of a ~ operator, and if desired, terms separated by + on the
    right. Note that any subsetting, i.e., \code{data$var} or
    \code{data[, "var"]}, is invalid for this function.} 
  \item{data}{A data frame in which the variables in the formula can be
    interpreted.}
  \item{subset}{Expression identifying a subset of the data to be used
    for conditional probability estimation.}
  \item{na.action}{A missing-data filter function, applied to the model
    frame, after any \code{subset} argument has been used. Default
    option is \code{options()$na.action}.}
    \item{conf.int}{Level for pointwise two-sided confidence
      intervals. Default is 0.95.}
  \item{failcode}{Failure code of the event of interest. Default is the
    smallest event type provided in the data.} 
}
\details{
  The conditional probability function is defined as the probability of
  having failed due to one competing event (the event of interest), given that
  no other event has previously occurred (Pepe, 1993).

  The \code{cpf} function aims at estimating this quantity along with
  its variance at each event times. It also computes a test of
  equality of conditional probability curves in two samples (and
  \emph{only} in two samples).

  Of note, if there is more than 2 competing events, the failure types
  that are not of interest are aggregated into one competing event.
}
\value{
  \code{cpf} returns an object of class \code{cpf} with components
  \item{cp}{Estimates of the conditional probability function given at
    all event times}
  \item{var}{Variance estimates}
  \item{time}{Event times}
  \item{lower}{Lower confidence limit for the conditional probability
    curve}
  \item{upper}{Upper confidence limit for the conditional probability
    curve}
  \item{n.risk}{Number of individuals at risk just before \eqn{t}{t}}
  \item{n.event}{A matrix giving the number of events of interest at
    time \eqn{t}{t} in the first column, and the number of competing events at time
    \eqn{t}{t} in the second column}
  \item{n.lost}{Number of censored observations at time \eqn{t}{t}}
  \item{size.strata}{Displays the size of each strata}
  \item{X}{Gives covariate's name and labels}
  \item{strata}{Gives the covariate labels that will be used by default
  for plotting the conditional probability curves, for example.}
  \item{call}{Call that produced the object}
  \item{z}{Test statististic}
  \item{p}{p value of the test}
  \item{failcode}{Same as in function call}
}
\references{
  M.S. Pepe and M. Mori, Kaplan-Meier, marginal or conditional probability curves in
  summarizing competing risks failure time data? \emph{Statistics in
    Medicine}, 12(8):737--751.
  
  A. Allignol, A. Latouche, J. Yan and J.P. Fine (2011).  A regression
  model for the conditional probability of a competing event:
  application to monoclonal gammopathy of unknown significance.
  \emph{Journal of the Royal Statistical Society: Series C},
  60(1):135--142.
}
\author{Arthur Allignol, \email{arthur.allignol@gmail.com}}

\seealso{\code{\link[prodlim]{Hist}}, \code{\link{print.cpf}},
  \code{\link{summary.cpf}}}
\examples{
data(mgus)

CP <- cpf(Hist(time, ev), data = mgus)
CP

## With age dichotomised according to its median
mgus$AGE <- ifelse(mgus$age < 64, 0, 1)
CP <- cpf(Hist(time, ev)~AGE, data = mgus)
CP
summary(CP)

## Conditional probability of the competing event
CP.death <- cpf(Hist(time, ev), data = mgus, failcode = 2)
CP.death
}
\keyword{survival}
