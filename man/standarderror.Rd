\name{standarderror}
\alias{standarderror}

\title{
Standard error.}

\description{
Computes the standard error of a numeric vector.
}

\usage{
standarderror(x)
}

\arguments{
  \item{x}{
a numerical vector. 
}
}

\value{
The standard error.
}

\examples{
data(mydata)
mydata.sumscore <- rowSums(mydata[,c("item1", "item2", "item3", "item4")])
standarderror(mydata.sumscore)
}