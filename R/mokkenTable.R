mokkenTable <-
function (data) {
  require(mokken)
  
  a <- data.frame(summary(check.monotonicity(na.omit(data))))[,c(1,9,10)]
  b <- data.frame(summary(check.iio(na.omit(data)))$item.summary)[,c(9,10)]
  table <- cbind(a, b)
  
  names(table) <- c("Hi", "#mono-sig", "mono-crit", "#iio-sig", "iio-crit")
  table
}
