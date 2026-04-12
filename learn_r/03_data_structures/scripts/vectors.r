# vectors

vector("numeric", 5) # numeric vector with O at every index
vector("complex", 5) # complex vector with O+0i at every index
vector("logical", 5) # logical vector with FALSE at every index
vector("character", 5) # character vector with "" at every index

# typeof y length de un vector
typeof(vector("logical", 5)) # logical
length(vector("numeric", 5)) # 5

# creating vectors with c()
real_numeic_vector <- c(1, 2, 3, 4, 5)
character_vector <- c("a", "b", "c", "d", "e")
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

integer_vector <- 2:100 # creates a sequence of integers from 2 to 100
cat("integer_vector:", integer_vector, "\n")

my_vector <- 5
is.vector(my_vector) # TRUE - a single number is considered a vector of length 1
length(my_vector)

# vectors to strings
my_vector <- c("a", "b", "c", "d", "e")
my_string <- paste(my_vector, collapse = ", ")
cat("my_string:", my_string, "\n")

# inserting elements
my_vector <- c(10, 20, 40, 50, 60)
cat("Original vector:", my_vector, "\n")

my_vector <- c(0, my_vector) # insert 0 at the beginning
cat("After inserting 0 at the beginning:", my_vector, "\n")

my_vector <- c(my_vector, 70) # insert 70 at the end
cat("After inserting 70 at the end:", my_vector, "\n")

# insert 30 at index 4
my_vector <- c(my_vector[1:3], 30, my_vector[4:length(my_vector)])
cat("After inserting 30 at index 4:", my_vector, "\n")

# accessing and modifying elements
my_vector <- c(10, 20, 30, 40, 50)
cat("Original vector:", my_vector, "\n")

print(my_vector[3]) # access the 3rd element
my_vector[3] <- 35 # modify the 3rd element
cat("After modifying the 3rd element:", my_vector, "\n")
