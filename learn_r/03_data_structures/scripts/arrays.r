# arrays

mi_vector <- c(1, 2, 3, 4, 5)
# vector con 5 elementos
mi_array <- array(mi_vector, dim = c(5, 1))
print("Array con 5 filas y 1 columna:")
print(mi_array)

# array con multiples columnas
mi_array2 <- array(mi_vector, dim = c(1, 5))
print("Array con 1 fila y 5 columnas:")
print(mi_array2)

# nxm dimensiones
datos <- 1:12
mi_array3 <- array(datos, dim = c(3, 4))
print("Array con 3 filas y 4 columnas:")
print(mi_array3)

# array con 3 dimensiones
data_1 <- c(1, 2, 3)
data_2 <- c(4, 5, 6)
data_3 <- c(7, 8, 9)
mi_array4 <- array(c(data_1, data_2, data_3), dim = c(3, 3, 2))
print("Array con 3 filas, 3 columnas y 2 niveles:")
print(mi_array4)

# arrays con vectores de diferente longitud
vector1 <- c(1, 2, 3, 4)
vector2 <- c(5, 6)
mi_array5 <- array(c(vector1, vector2), dim = c(3, 2))
print("Array con vectores de diferente longitud:")
print(mi_array5)

# accediendo y modificando elementos
array <- array(1:6, dim = c(2, 3))
print("Array original:")
print(array)

print("Elemento en la primera fila y segunda columna:")
elemento <- array[1, 2]
print(elemento)

print("Modificando el elemento en la primera fila y segunda columna a 10:")
array[1, 2] <- 10
print("Array modificado:")
print(array)

array <- array(c(c(1, 2, 3), c(4, 5, 6, 7, 8, 9)), dim = c(3, 3, 2))
print("Array original:")
print(array)

print("Elemento en la primera fila, segunda columna y primer nivel:")
elemento <- array[1, 2, 1]
print(elemento)

print("Modificando elemento [1, 2, 1]:")
array[1, 2, 1] <- 10
print("Array modificado:")
print(array)

print("Modificando elemento [2, 3, 2]:")
array[2, 3, 2] <- 89
print("Array modificado:")
print(array)

vector <- c("a", "b", "c", "d", "e", "f", "g", "h", "i")
array <- array(vector, dim = c(3, 3, 1))
print("Array con caracteres:")
print(array)

print("array[5]:")
print(array[5]) # e

print("array[2, 1, 1]:")
print(array[2, 1, 1]) # b

vector <- c("a", "b", "c", "d", "e", "f", "g", "h", "i")
array <- array(vector, dim = c(3, 3, 2))

print("Original Array:")
print(array)

array[2, 2, 2] <- "E"
print("Array modificado con e mayuscula:")
print(array)