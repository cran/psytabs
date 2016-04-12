\name{regressionTable}
\alias{regressionTable}

\title{
Regression analysis table.}

\description{
Produces a table of the results of a regression analysis.
}
\usage{
regressionTable(model.fit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model.fit}{
results of a regression analysis as returned by the lm or glm functions. Additionally the robust regression functions of the robust package are supported.
}}

\value{
A regression table.}

\examples{

data(iris)
fit <- lm(Sepal.Length ~ Petal.Width + Species, data = iris)
(tab <- regressionTable(fit))

#Must have the robust package instaled
#fit.rob <- lmrob(Sepal.Length ~ Petal.Width + Species, data = iris)
#regressionTable(fit.rob)

#saveTable(tab, "regressionTable.rtf")

#Logisitc Regression currently works not correctly.
# data(anorexia, package="MASS")
# anorexia.logistic <- anorexia[anorexia$Treat != "FT",] 
# fit <- glm(Treat ~ Postwt, family = binomial(), data = anorexia.logistic)
# 
# regressionTable(fit)
}