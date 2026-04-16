# input

sum <- function(x, y) {
  x + y
}

print("Enter two numbers to calculate their sum:")
input <- file("stdin") # esto es para leer desde la consola
user_input <- readLines(input, 2) # lee dos líneas de entrada del usuario

x <- as.numeric(user_input[1])
y <- as.numeric(user_input[2])

result <- sum(x, y)
cat("The sum of", x, "and", y, "is", result, "\n")