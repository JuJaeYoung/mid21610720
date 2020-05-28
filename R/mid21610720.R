#' Number of times for dice number 1
#'
#' When you throw a coin n times and throw the dice as many times as the front, the number of times 1 comes out.
#'
#' @examples
#'
#' number1(100)
number1 <- function(n) {

  a <- sample(c(1,0), n, rep = TRUE)
  coinT <- sum(a)

  b <- sample(c(1:6), coinT, rep = TRUE)

  dice1 <- 0

  for (j in 1:coinT) {
    if (b[j] == 1){
      dice1 <- dice1 + 1
    }
  }
  return(dice1)
}

number1(100)
