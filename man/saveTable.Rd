\name{saveTable}
\alias{saveTable}
\title{
Save a table.
}
\description{
Saves a table either in rtf-format (recommended) or in HTML-format.}
\usage{
saveTable(x, file, HTML = FALSE)
}

\arguments{
  \item{x}{
A table as generated for example by the mokkenTable function.}
  \item{file}{
The filename the table should be saved as.
}
  \item{HTML}{
Whether the file format should be HTML.}
}
\value{
None
}
\examples{
data(myData)
test <- demographicTable(myData$sex, myData$age_group7, percent=FALSE)
test

#saveTable(test, "test.rtf")
}