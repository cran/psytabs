\name{meanTable}
\alias{meanTable}

\title{
Mean table.}

\description{
Produces a 2- or 1-dimensional table of means (and a measure of variation) regarding a variable and one or two factors.
}
\usage{
meanTable(value, ver.factor, hor.factor = NA, variation="se")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{value}{
numeric vector, for which the table should be created.
}
\item{ver.factor}{
factor constituting the rows of the table. 
}
\item{hor.factor}{
factor constituting the columns of the table. 
}
\item{variation}{
can be either "se" or "sd". variation="se" computes the standard errors and variation="sd" the standard deviation.
}
}

\value{
A mean table.}

\examples{
data(mydata)
mydata.sumscore <- rowSums(mydata[,c("item1", "item2", "item3", "item4")])
meanTable(mydata.sumscore, mydata$age_group7)
meanTable(mydata.sumscore, mydata$age_group7, mydata$sex)
meanTable(mydata.sumscore, mydata$sex, mydata$age_group7)
(tab <- meanTable(mydata.sumscore, mydata$age_group7, mydata$sex, variation="sd"))

#saveTable(tab, "meanTable.rtf")
}