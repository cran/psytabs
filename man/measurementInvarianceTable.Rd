\name{measurementInvarianceTable}
\alias{measurementInvarianceTable}

\title{
Measurement invariance table.}

\description{
Produces a table summarizing the results of a measurement invariance analysis as conducted by the respective function of the lavaan and semTools package.
}
\usage{
measurementInvarianceTable(measurement.invariance)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{measurement.invariance}{
Results returned by the measurementInvariance function of the lavaan or semTools package.
}
}
\details{
Please note that if the scaled chi-squared statistic is used a special chi-squared difference test is calculated, because the difference between two scaled chi-square statistics does not follow the chi-squared distribution. See also http://www.statmodel.com/chidiff.shtml.
}

\value{
A measurement invariance table.}

\examples{
library(semTools)
#Example taken from the semTools package
HW.model <- ' visual =~ x1 + x2 + x3
              textual =~ x4 + x5 + x6
              speed =~ x7 + x8 + x9 '

mi.result <- measurementInvariance(HW.model, data=HolzingerSwineford1939, group="school")
tab.1 <- measurementInvarianceTable(mi.result)
tab.1

mi.strict.result <- measurementInvariance(HW.model, data=HolzingerSwineford1939, strict=TRUE, group="school")
tab.2 <- measurementInvarianceTable(mi.strict.result)
tab.2

mi.robust.result <- measurementInvariance(HW.model, data=HolzingerSwineford1939, estimator="MLM", group="school")
tab.3 <- measurementInvarianceTable(mi.robust.result)
tab.3

mi.robstrict.result <- measurementInvariance(HW.model, data=HolzingerSwineford1939, estimator="MLM", strict=TRUE, group="school")
tab.4 <- measurementInvarianceTable(mi.robstrict.result)
tab.4

#saveTable(tab.2, "measurementInvarianceTable.rtf")
}