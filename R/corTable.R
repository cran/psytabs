corTable <-
function (data, sd = FALSE) {
  m2 <- cor(data, use="complete.obs")
  m2[upper.tri(m2)] <- NA
  if(sd) {
    mySD <- function(x) return(sd(x, na.rm=TRUE))
    diag(m2) <- apply(data, 2, mySD)
  } else {
    diag(m2) <- NA
  }
  m2 <- data.frame(m2)
  round(m2, 2)
}
