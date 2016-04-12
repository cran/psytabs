\name{corTable}
\alias{corTable}

\title{
Correlation matrix table.}

\description{
Produces a correlation matrix table.
}

\usage{
corTable(data, use = "pairwise", method = "pearson", round = 2, 
significance = "stars", sd = FALSE, mean.sd.cols = FALSE)
}

\arguments{
  \item{data}{
  data.frame containing the variables for which the correlation matrix should be calculated.
  }
  \item{use}{
  Which observations should be used? use="pairwise" is the default value and will do pairwise deletion of cases. use="complete" will select only complete cases.
  }
  \item{method}{
  Which correlation type should be used? method="pearson" is the default value. The alternatives to be passed to cor are "spearman" and "kendall".
  }
  \item{round}{
  numeric values that denotes to what decimal point should be rounded.
  }
  \item{significance}{
  character vector that specifies if p-values and/or significance stars should be included in the table. ="NA" displays no significances. ="stars" displays significance stars. ="p-values" displays p-values and =c("stars", "p-values") displays both stars and p-values.
  }
  \item{sd}{
  logical value that toggles Whether the standard deviation should be displayed in the diagonal of the correlation matrix.
  }
  \item{mean.sd.cols}{
  logical value that toggles Whether additional mean and standard columns should be included in the table.
  }
}

\value{
A dataframe comprising the correlation matrix table.
}

\examples{
data(mydata)
corTable(mydata[,1:4])
corTable(mydata[,1:4], method = "kendall")
corTable(mydata[,1:4], sd = TRUE)
corTable(mydata[,1:4], use = "complete")
corTable(mydata[,1:4], significance = NA)
corTable(mydata[,1:4], significance = c("stars", "p-values"))
corTable(mydata[,1:4], round = 4)
corTable(mydata[,1:4], mean.sd.cols = TRUE)
(cor.tab <- corTable(mydata[,1:4], significance = "stars", mean.sd.cols = TRUE))

#saveTable(cor.tab, "corTab.rtf")
}
