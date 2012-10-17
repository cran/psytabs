\name{demographicTable}
\alias{demographicTable}

\title{
Demographic table.}

\description{
Produces a table of the distribution of demographic characteristics.
}

\usage{
demographicTable(hor_fact, ver_fact, count = TRUE, percent = TRUE, header = TRUE)
}

\arguments{
  \item{hor_fact}{
The factor constituting the columns of the table. 
}
  \item{ver_fact}{
The factor constituting the rows of the table. 
}
  \item{count}{
Whether to include the absolute values in the table.
}
  \item{percent}{
Whether to include the values in percent in the table.
}
  \item{header}{
Whether to include a header for the row factor.
}
}

\value{
A dataframe constituting the demographic table.
}

\examples{
data(myData)

tab.1 <- demographicTable(myData$sex, myData$age_group7)
tab.1
tab.2 <- demographicTable(myData$sex, myData$age_group7, count=FALSE)
tab.2
tab.3 <- demographicTable(myData$sex, myData$age_group7, percent=FALSE)
tab.3

#saveTable(tab.1, "demographicTable.rtf")
}