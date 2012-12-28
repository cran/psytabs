\name{mokkenTable}
\alias{mokkenTable}

\title{
Mokken table.}

\description{
Produces a table summarizing the results of mokken analyses.
}
\usage{
mokkenTable(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
data.frame containing the variables (i.e. items) for which the table should be created.
}
}


\value{
A mokken table.}

\examples{
data(myData)
mokkenTable(myData[,1:4])
#saveTable(mokkenTable(myData[,1:4]), "mokkentable.rtf")
}