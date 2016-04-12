\name{frequencyTable}
\alias{frequencyTable}

\title{
Frequency table.}

\description{
Produces a simple frequeny table.
}

\usage{
frequencyTable(factors)
}

\arguments{
  \item{factors}{
  data.frame containing the variables for which the frequency table should be calculated.
  }
}

\value{
A dataframe comprising the frequency table.
}

\examples{
data(mydata)
(freq.tab <- frequencyTable(data.frame(Sex=mydata$sex, Age=mydata$age_group7)))

#saveTable(freq.tab, "freqTab.rtf")
}
