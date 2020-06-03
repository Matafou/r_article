1:  x <- 0

2:  f <- function () {
  
3:     g <- function () {
4:         return(x)
5:     }

6:     y <- g()
7:     x <- 42
8:     return(g)
9:  }

10: f()()
