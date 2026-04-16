# functions

cat("***** Function *****\n")
even_odd <- function(x) {
  if (x %% 2 == 0) {
    "even" # r usa retorno implicito
  } else {
    "odd"
  }
}

# test the function
result_1 <- even_odd(4)
result_2 <- even_odd(7)
print(result_1)
print(result_2)

# function with default argument
cat("***** Function With Default Argument *****\n")
greet <- function(name = "World") {
  paste("Hello,", name)
}

# test the function with and without argument
greet_result_1 <- greet("Alice")
greet_result_2 <- greet()
print(greet_result_1)
print(greet_result_2)

# function with multiple arguments
cat("***** Function With Multiple Arguments *****\n")
add_numbers <- function(a, b) {
  a + b
}

# test the function
add_result <- add_numbers(10, 20)
print(add_result)

# function with multiple return values
cat("***** Function With Multiple Return Values *****\n")
calculate <- function(x, y) {
  sum <- x + y
  product <- x * y
  list(sum = sum, product = product)
}

# test the functions
add_result <- add_numbers(5, 3)
calc_result <- calculate(5, 3)
print(add_result)
print(calc_result)

# working with vectors in functions
cat("***** Function With Vectors *****\n")
vector_sum <- function(vec) {
  sum <- 0
  for (i in vec) {
    sum <- sum + i
  }
  sum
}

# test the function with a vector
vec_result <- vector_sum(c(10, 20, 30, 40, 50))
print(vec_result)

# nested functions
cat("***** Nested Functions *****\n")
suma <- function(x, y) {
  x + y
}

resta <- function(x, y) {
  x - y
}

operar <- function(a, b) {
  sum_result <- suma(a, b)
  rest_result <- resta(a, b)
  list(sum = sum_result, rest = rest_result)
}

# test the nested functions
operar_result <- operar(10, 5)
print(operar_result)

# defining function in another function
cat("***** Function Defined Inside Another Function *****\n")
outer_function <- function(x) {
  inner_function <- function(y) {
    y * 2
  }
  inner_function(x) + 10
}

# test the outer function
outer_result <- outer_function(5)
print(outer_result)