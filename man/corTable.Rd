\name{corTable}
\alias{corTable}

\title{
Correlation matrix table.}

\description{
Produces a simple correlation matrix table.
}

\usage{
corTable(data, sd = FALSE)
}

\arguments{
  \item{data}{
  Variables for which the correlation matrix should be calculated.
  }
  \item{sd}{
  Whether the standard derivition should be displayed in the diagonal.
  }
}

\value{
A dataframe comprising the correlation matrix table.
}

\examples{
data(myData)
(cor.tab <- corTable(myData[,1:4]))
corTable(myData[,1:4], sd=TRUE)
#saveTable(cor.tab, "corTab.rtf")
}
