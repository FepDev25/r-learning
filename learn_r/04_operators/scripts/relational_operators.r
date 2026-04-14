number1 <- 10
number2 <- 3

print("********** Numbers **********")
print(number1)
print(number2)

# Equal to
print("Equal to")
print(number1 == number2)

# Not equal to
print("Not equal to")
print(number1 != number2)

# Less than
print("Less than")
print(number1 < number2)

# Less than equal to
print("Less than equal to")
print(number1 <= number2)

# Greater than
print("Greater than")
print(number1 > number2)

# Greater than equal to
print("Greater than equal to")
print(number1 >= number2)

# Relational operators in vectors
vec_1 <- c(10, 20, 30)
vec_2 <- c(15, 20, 25)

print("********** Vectors **********")
print(vec_1)
print(vec_2)

print("Equal to")
print(vec_1 == vec_2)

print("Not equal to")
print(vec_1 != vec_2)

print("Less than")
print(vec_1 < vec_2)

print("Less than equal to")
print(vec_1 <= vec_2)

print("Greater than")
print(vec_1 > vec_2)

print("Greater than equal to")
print(vec_1 >= vec_2)

# %in% , checks if the element on the left is present in the vector on the right
print("********** %in% operator **********")
print("Is 10 in vec_1?")
print(10 %in% vec_1)

sub <- c(10, 25)
print("Is sub in vec_1?")
print(sub %in% vec_1)