# factors
# factors are used to represent categorical data

# create a factor

marital_status <- c("single", "married", "divorced", "separated", "widowed")
my_factor <- factor(marital_status)
print("my_factor:")
print(my_factor)
print("levels(my_factor):")
print(levels(my_factor))
print("is my_factor a factor?")
print(is.factor(my_factor))
print("class(my_factor):")
print(class(my_factor))
print("type of my_factor:")
print(typeof(my_factor))

# accediendo a valores de un factor
print("my_factor[1]:")
print(my_factor[1])
print("my_factor[2]:")
print(my_factor[2])
