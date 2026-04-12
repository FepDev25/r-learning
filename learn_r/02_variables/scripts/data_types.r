# variables
real <- 10
class(real) # numeric

decimal <- 4.56
class(decimal) # numeric

caracter <- "10"
class(caracter) # character

boolean <- TRUE
class(boolean) # logical

entero <- 3:10
class(entero) # integer

complejo <- 5i
class(complejo) # complex

# type y length
my_integer <- 3:19
cat("Type: ", typeof(my_integer), "\n")
cat("Length: ", length(my_integer), "\n")

# sobre escribir variables
x <- 5
cat("Value of x: ", x, "\n")
cat("Type of x: ", typeof(x), "\n")
x <- "Now I'm a string"
cat("Value of x: ", x, "\n")
cat("Type of x: ", typeof(x), "\n")
