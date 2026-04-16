# recursion

# factorial function
factorial <- function(n) {
  if (n == 0) {
    1
  } else {
    n * factorial(n - 1)
  }
}

# test the function
result <- factorial(5)
print(result)

# Fibonacci function
fibonacci <- function(n) {
  if (n == 0) {
    0
  } else if (n == 1) {
    1
  } else {
    fibonacci(n - 1) + fibonacci(n - 2)
  }
}

# test the function
result <- fibonacci(10)
print(result)