\name{efaTable}
\alias{efaTable}

\title{
Exploratory factor analysis table.}

\description{
Produces a table of the results of exploratory factor analysis.
}
\usage{
efaTable(fa.res, data, mean.sd = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fa.res}{
results of exploratory factor analysis as returned by the fa function of the psych package.
}
\item{data}{
data.frame on which the EFA was conducted.
}
\item{mean.sd}{
logical value that indicates whether means and standard derivitions should be included in the table.
}
}

\value{
An EFA table.}

\examples{
data(mydata)
library(psych)
res <- fa(r = mydata[,c("item1", "item2", "item3", "item4")], nfactors = 2)
tab.1 <- efaTable(res, mydata[,c("item1", "item2", "item3", "item4")])
tab.1
tab.2 <- efaTable(res, mydata[,c("item1", "item2", "item3", "item4")], mean.sd = FALSE)
tab.2

#saveTable(tab.1, "efaTable.rtf")
}