# matrices

matrix <- matrix(1:6, nrow = 2, ncol = 3)
print("Matrix:")
print(matrix)

data1 <- c(1, 2, 3)
data2 <- c(4, 5, 6)
matrix2 <- matrix(c(data1, data2), nrow = 3, ncol = 2, byrow = TRUE)
print("Matrix created using matrix:")
print(matrix2)

# accediendo a elementos de la matriz
print("Matrix:")
print(matrix)

print("Elemento en la primera fila y segunda columna:")
print(matrix[1, 2])

matrix[1, 1] <- 10
print("Matriz después de modificar el elemento 1,1:")
print(matrix)