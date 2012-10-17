\name{myData}
\alias{myData}
\docType{data}
\title{
Simulated data.
}
\description{
A simulated data frame made with help of the psych package.
}
\usage{data(myData)}
\format{
  A data frame with 500 observations on the following 7 variables.
  \describe{
    \item{\code{item1}}{a numeric vector}
    \item{\code{item2}}{a numeric vector}
    \item{\code{item3}}{a numeric vector}
    \item{\code{item4}}{a numeric vector}
    \item{\code{sex}}{a factor with levels \code{Female} \code{Male}}
    \item{\code{age_group7}}{a factor with levels \code{< 21} \code{> 60} \code{21-30} \code{31-40} \code{41-50} \code{51-60}}
    \item{\code{employment}}{a factor with levels \code{Employed} \code{Not employed}}
  }
}

\examples{
data(myData)
str(myData)
summary(myData)
}
\keyword{datasets}
