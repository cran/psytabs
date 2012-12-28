\name{normTable}
\alias{normTable}

\title{
Norm table.}

\description{
Produces a table of norms.
}

\usage{
normTable(sumscores, from, to, statistics = "PR", group = NA, as.list = FALSE)}

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
  \item{group}{
List of subgroups by which the norms should be created. }
\item{as.list}{
logical vector that toggles whether the norm table should rather be returned as a (vertical) list than as a table. This option is useful if you have a lot of subgroups and/or norm statistics and the resulting table would not fit on the page horizontally. Note that currently when you set as.list = TRUE the resulting list cannot be saved by the saveTable function.
}
}

\details{
The different norm statistics (besides the percent ranks) are created by transforming the z-Statistic. This means that at first the sumscores are z-Transformed and then the other statistics are calculated based on the z-Statistic. 

One could also choose to first "normalize" the z-Statistic, i.e. calculate the percent ranks and then assign the z-values to the sumscores according to the percent ranks of the standard normal distribution. This option is---albeit it is sometimes called the scientific standard---debatle because if the population does not follow the normal curve then the normalisation will lead to an artificial spreading or shortening of scores. This leads to the scores having only an ordinal scale quality even when the scores in the population distribution had originally metric scale quality. Thus this option should be used with caution and only on a strong theoretical basis. Therefore this option is currently not implemented. 
}

\value{
A dataframe constituting the norm table.
}

\examples{
data(myData)
myData.sumscore <- rowSums(myData[,c("item1", "item2", "item3", "item4")])

tab.1 <- normTable(myData.sumscore, from = 0, to = 12, statistics=c("PR"))
tab.1
tab.2 <- normTable(myData.sumscore, from = 0, to = 12, statistics=c("PR", "T", "Stanine"))
tab.2
tab.3 <- normTable(myData.sumscore, from = 0, to = 12, statistics=c("PR"), group=myData$sex)
tab.3
tab.4 <- normTable(myData.sumscore, from = 0, to = 12, statistics=c("PR", "T"), group=myData$employment)
tab.4
tab.5 <- normTable(myData.sumscore, from = 0, to = 12, statistics=c("T"), group=list(myData$sex, myData$employment))
tab.5
list.5 <- normTable(myData.sumscore, from = 0, to = 12, statistics=c("PR", "T", "Z", "z"), group=list(myData$sex, myData$employment), as.list=TRUE)
list.5
#saveTable(tab.2, "normTable.rtf")
}