\name{mgus}
\Rdversion{1.1}
\alias{mgus}
\docType{data}
\title{
Monoclonal Gammopathy of Undetermined Significance
}
\description{
  All 241 patients diagnosed with monoclonal gammopathy of undetermined
  significance at the Mayo Clinic before Jan. 1, 1971, and followed
  forward until 1992. The interest lies in the possible transformation
  of mgus towards a cancer of the plasma cells, death from other causes
  acting as a competing risk.

}
\usage{data(mgus)}
\format{
  A data frame with 241 observations and the following 10 variables.
  \describe{
    \item{\code{id}}{Patient identification number}
    \item{\code{time}}{Event time}
    \item{\code{ev}}{Event type. 0=censored, 1=cancer of the plasma cells, 2=other}
    \item{\code{age}}{Age at diagnostic of mgus}
    \item{\code{sex}}{Sex. 1=male, 2=female}
    \item{\code{y.diag}}{Calendar year of diagnosis}
    \item{\code{albu}}{Albumine level at mgus diagnosis}
    \item{\code{creat}}{Serum creatinine level at mgus diagnosis}
    \item{\code{Hb}}{Hemoglobine level at mgus diagnosis}
    \item{\code{size}}{Size of the monoclonal protein peak at mgus diagnosis}
  }
}
\source{
  T.M. Thernean and P.M. Grambsch (2001). \emph{Modelling Survival Data:
    Extending the Cox Model}. Springer, New York.
  }
\examples{data(mgus)}
\keyword{datasets}
\keyword{survival}