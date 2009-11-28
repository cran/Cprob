\name{predict.cpf}
\alias{predict.cpf}
\title{Conditional Probability Estimates at chosen timepoints}
\description{
  This function displays estimates of the conditional probability
  function at timepoints chosen by the user
}
\usage{
\S3method{predict}{cpf}(object, timepoints, ...)
}
\arguments{
  \item{object}{An object of class \code{cpf}}
  \item{timepoints}{Vector of timepoints}
  \item{\dots}{Not used}
}
\value{
  A data.frame with the following columns
  \item{time}{The given timepoints}
  \item{cp}{Conditional probability estimates}
  \item{var}{Variance estimates}
  \item{lower}{Lower confidence limit}
  \item{upper}{Upper confidence limit}
  \item{n.risk}{Number of individuals at risk just before the
    timepoints}
  \item{group}{Group, if any}
  
}
\author{Arthur Allgnol, \email{arthur.allignol@fdm.uni-freiburg.de}}
\seealso{\code{\link{cpf}}}
\examples{
data(mgus)
mgus$A <- ifelse(mgus$age < 64, 0, 1)

test <- cpf(Hist(time, ev)~A, data = mgus)

predict(test, c(10, 20))
}
\keyword{survival}

