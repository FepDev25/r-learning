# loops

print("while loop:")
number <- 10
while (number > 0) {
  print(paste("number: ", number))
  number <- number - 1
}

i <- 0
while (i < 10) {
  if (i %% 2 == 0) {
    print(paste("i: ", i, "is even"))
  } else {
    print(paste("i: ", i, "is odd"))
  }
  i <- i + 1
}

print("for loop:")
vector <- c(1, -2, 3, -4, 5)
for (i in vector) {
  print(paste("i: ", i))
}

print("nested for loop:")
for (i in 1:12){
  cat("\n")
  for (j in 1:12) {
    print(paste(i, "x", j, "=", i * j))
  }
}

cat("\nrepeat loop:\n")
k <- 0
repeat {
  k <- k + 1
  print(paste("k: ", k))
  if (k >= 10) {
    break
  }
}

# break and next
print("break and next:")
for (i in 1:10) {
  if (i == 3) {
    next
  }
  if (i == 7) {
    break
  }
  print(paste("i: ", i))
}
