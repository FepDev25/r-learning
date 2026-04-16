mean <- function(my_vector) {

  sum <- 0
  for (i in my_vector){
    sum <- sum + as.integer(i)
  }
  sum / length(my_vector)
}

median <- function(my_vector) {

  sorted_vector <- sort(as.integer(my_vector))

  my_vector_length <- length(my_vector)

  middle <- my_vector_length / 2
  if (my_vector_length %% 2 == 0) {
    (sorted_vector[middle] + sorted_vector[middle + 1]) / 2
  } else {
    sorted_vector[ceiling(middle)]
  }
}

path <- "./learn_r/10_challenges/data/data.txt"
file_data <- file(path, open = "r")
lines <- readLines(file_data)

mi_vector <- vector("numeric", 0)
for (i in 1 : length(lines)) { # nolint: seq_linter.
  mi_vector <- c(mi_vector, lines[i])
}

result <- vector("numeric", 0)
median <- median(mi_vector)
mean <- mean(mi_vector)

result <- c(result, mean)
result <- c(result, median)

write(result, "./learn_r/10_challenges/data/output.txt")