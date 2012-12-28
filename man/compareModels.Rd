\name{compareModels}
\alias{compareModels}

\title{
Compare two cfa models fitted by lavaan.}

\description{
Internal function. Should not be used. 

The function is adapted from the lavaan package.}
\usage{
compareModels(fm0, fm1, scaled = FALSE, fm0.scaling = 1, fm1.scaling = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fm0}{
  First model.
  }
  \item{fm1}{
  Second model.
  }
  \item{scaled}{
  Is chisq scaled, i.e. a Satorra-Bentler-scaled chi-squared statistic?
  }
  \item{fm0.scaling}{
  Scaling factor of first model.
  }
  \item{fm1.scaling}{
  Scaling factor of second model.
  }
}


\value{
Some model comparison statistics.}

\examples{
###
1+1
}