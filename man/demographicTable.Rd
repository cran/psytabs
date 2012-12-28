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
factor constituting the columns of the table. 
}
  \item{ver_fact}{
factor constituting the rows of the table. 
}
  \item{count}{
logical value that toggles whether to include the absolute values in the table.
}
  \item{percent}{
logical value that toggles whether to include the values in percent in the table.
}
  \item{header}{
logical value that toggles whether to include a header for the row factor.
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