# conditionals

x <- 50
vector <- c(1, -2, 3, -4, 5)

print(paste("x: ", x))
print(paste("vector: ", paste(vector, collapse = ", ")))

# if-else statement
if (x > 0) {
  print("x is positive")
} else if (x < 0) {
  print("x is negative")
} else {
  print("x is zero")
}

if (!x %in% vector) {
  print("x is not in the vector")
} else {
  print("x is in the vector")
}

if (x %% 2 == 0) {
  print("x is even")
  if (x > 10) {
    print("x is greater than 10")
  } else {
    print("x is less than or equal to 10")
  }
} else {
  print("x is odd")
}

# ifelse function
vector <- c(1, -2, 3, -4, 5)
result <- ifelse(vector > 0, "positive", "negative")
print(paste("vector: ", paste(vector, collapse = ", ")))
print(paste("result: ", paste(result, collapse = ", ")))

# switch statement
day <- "Monday"
message <- switch(day,
                  "Monday" = "Start of the week",
                  "Tuesday" = "Second day of the week",
                  "Wednesday" = "Midweek",
                  "Thursday" = "Almost the weekend",
                  "Friday" = "Last day of the workweek",
                  "Saturday" = "Weekend!",
                  "Sunday" = "Weekend!",
                  "Invalid day")
print(paste("day: ", day))
print(paste("message: ", message))