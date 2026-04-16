
hearts <- function(test_variable){
  heart <- "<3"

  vector_of_hearts <- vector("character", 0)

  for (i in test_variable){
    x <- rep(heart, i)
    x <- paste(x, collapse = "")
    vector_of_hearts <- c(vector_of_hearts, x)
  }

  vector_of_hearts
}

# Driver Code
test_variable1 <- c(5, 2)
test_variable2 <- c(3, 3)

hearts(test_variable1)
hearts(test_variable2)
