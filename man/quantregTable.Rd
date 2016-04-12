\name{quantregTable}
\alias{quantregTable}

\title{
Quantile regression table.}

\description{
Produces a quantile regression table.
}
\usage{
quantregTable(x, digits = 2, significance="none")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
summary for quantile regression results as returned when calling summary on an quantile regression object.
}
\item{digits}{
number of digits to display. 
}
\item{significance}{
factor that toggles whether beside the standard error significance should be made visible. Can be either "none" nothing additional is displayed, "stars" significance stars are displayed and "bold" signicant values are bold when saved by the saveTable function. 
}
}

\value{
A quantreg table.}

\examples{
#must have quantreg installed
library(quantreg)
data(stackloss)
y <- stack.loss
x <- stack.x
res <- summary(rq(y ~ x, tau=c(0.25, 0.5, 0.75)), se="boot")
quantregTable(res)
quantregTable(res, significance="stars")
tab <- quantregTable(res, significance="bold")


}