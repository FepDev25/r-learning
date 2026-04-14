# dataframes

# Explore the concept of data frames in R, a versatile structure
# for storing tabular data where each column can hold different data types

df <- data.frame(
  id = 1:5,
  name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  age = c(25, 30, 35, 40, 45),
  is_student = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)
print("Data Frame:")
print(df)
print("Number of rows:")
print(nrow(df))
print("Number of columns:")
print(ncol(df))

df <- data.frame(
  foo = c(1, 2, 3),
  bar = c("A", "B", "C"),
  baz = c(TRUE, FALSE, TRUE)
)
print("Data Frame:")
print(df)

# accediendo y manipulando datos en el dataframe
name <- c("Felipe", "Emilia", "Pedrito", "Ian")
address <- c("Calle 123", "Avenida 456", "Plaza 789", "Callejón 101")
age <- c(28, 32, 24, 29)
gender <- c("M", "F", "M", "M")

empleados <- data.frame(name, address, age, gender)
print("Data Frame:")
print(empleados)

# accediendo a primera fila, tercera columna
print(empleados[1, 3])
# accediendo a toda la segunda fila
print(empleados[2, ])
# accediendo a toda la tercera columna
print(empleados[, 3])
# accediendo a las columnas name y age
print(empleados[, c("name", "age")])
# accediendo a toda una columa
print(empleados$gender)

# merge dos dataframes
df_1 <- data.frame(
  id = 1:3,
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  is_student = c(TRUE, FALSE, TRUE)
)
print("Data Frame 1:")
print(df_1)

df_2 <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  salary = c(50000, 60000, 70000),
  department = c("HR", "IT", "Finance")
)
print("Data Frame 2:")
print(df_2)

merged_df <- merge(df_1, df_2, by = "name")
print("Merged Data Frame:")
print(merged_df)

# cuando las columnas no son las mismas
df_3 <- data.frame(
  employee_name = c("Alice", "Bob", "Charlie"),
  salary = c(50000, 60000, 70000),
  department = c("HR", "IT", "Finance")
)
print("Data Frame 3:")
print(df_3)

merged_df_2 <- merge(df_1, df_3, by.x = "name", by.y = "employee_name")
print("Merged Data Frame with different column names:")
print(merged_df_2)