\name{norms}
\alias{norms}

\title{
Establish norms.}

\description{
Internal function. Should not be used. 
}
\usage{
norms(sumscores, from, to, statistics = "PR")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sumscores}{
The sumscore vector for which norms should be created. 
}
  \item{from}{
numeric value. Lowest possible sumscore as a numeric value. 
}
  \item{to}{
numeric value. Highest possible sumscore as a numeric value. 
}
  \item{statistics}{
character vector that toggles which norm statistics are included in the norm table. Currently Percent ranks "PR", z-Statistic "z", Z-Statistic "Z", IQ-Stiatistc "IQ", T-Statistic "T" and Stanine "Stanine" are supported. }
}


\value{
Norms.}

\examples{
###
1+1
}