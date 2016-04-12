\name{linearRegressionTable}
\alias{linearRegressionTable}

\title{
Regression analysis table.}

\description{
Produces a table of the results of a regression analysis.
}
\usage{
linearRegressionTable(model.fit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model.fit}{
results of a regression analysis as returned by the lm function. Additionally the robust regression functions of the robust package are supported.
}}

\value{
A linear regression table.}

\examples{

data(iris)
fit <- lm(Sepal.Length ~ Petal.Width + Species, data = iris)
(tab <- linearRegressionTable(fit))

#saveTable(tab, "linearRegressionTable.rtf")

}