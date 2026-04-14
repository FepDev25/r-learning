# Estructuras de Datos

R ofrece varias estructuras para organizar y manipular datos. Cada una tiene características específicas según el tipo de datos que almacenan y su dimensionalidad.

## Vectores

- Estructura básica de R. Contienen elementos del **mismo tipo**.
- Tipos posibles: logical, integer, numeric, character, complex.

### Crear vectores

```r
# Con c()
nums <- c(1, 2, 3, 4, 5)
chars <- c("a", "b", "c")
logicos <- c(TRUE, FALSE, TRUE)

# Con vector()
vector("numeric", 5)   # [0, 0, 0, 0, 0]
vector("logical", 5)   # [FALSE, FALSE, FALSE, FALSE, FALSE]

# Secuencias
enteros <- 2:100       # integers del 2 al 100
```

### Acceder y modificar elementos

```r
v <- c(10, 20, 30, 40, 50)
v[3]         # acceder al 3er elemento → 30
v[3] <- 35   # modificar el 3er elemento
```

### Insertar elementos

```r
v <- c(10, 20, 40, 50)
v <- c(0, v)           # insertar al inicio
v <- c(v, 60)          # insertar al final
v <- c(v[1:3], 30, v[4:length(v)])  # insertar en posición específica
```

### Vectores a strings

```r
v <- c("a", "b", "c")
paste(v, collapse = ", ")   # "a, b, c"
```

> **Nota**: Un solo número en R se considera un vector de longitud 1.

## Listas

- Almacenan elementos de **cualquier tipo**, incluyendo otras listas.
- Se crean con `list()`.

### Crear y manipular listas

```r
mi_lista <- list("a", 2, TRUE)
mi_lista2 <- list("a", 2, TRUE, list(1, 2, 3))  # listas anidadas

# Insertar elementos
lista <- list(1, 2, 3)
lista[[4]] <- 4              # agregar al final
lista <- c(lista, 5)         # también funciona

# Acceder y modificar
lista[[1]]         # primer elemento
lista[[1]] <- "x"  # modificar primer elemento
```

### Acceder a sublistas

- `lista[[n]]`: devuelve el **contenido** de la n-ésima sublista.
- `lista[n]`: devuelve una **lista** con un solo elemento.

```r
l <- list(1, list(2, 3, 4), list(list(5, 6, 7)))
l[[2]]          # [2, 3, 4]
l[[3]][[1]]     # [5, 6, 7]
l[[3]][[1]][1]  # 5
```

### Listas con nombres (similar a diccionarios)

```r
persona <- list(name = "Alice", age = 30, city = "New York")
persona$name    # "Alice"
persona$age     # 30
```

### Listas recursivas

```r
is.recursive(lista)   # TRUE si contiene otras listas
```

## Matrices

- Estructura **bidimensional** con elementos del mismo tipo.
- Se crean con `matrix(datos, nrow, ncol, byrow)`.

### Crear matrices

```r
m <- matrix(1:6, nrow = 2, ncol = 3)

# byrow = TRUE rellena por filas en vez de columnas
m2 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2, byrow = TRUE)
```

### Acceder y modificar

```r
m[1, 2]        # fila 1, columna 2
m[1, 1] <- 10  # modificar elemento
```

## Arrays

- Similares a las matrices pero pueden tener **más de 2 dimensiones**.
- Se crean con `array(datos, dim = c(filas, columnas, niveles, ...))`.

### Crear arrays

```r
# 2 dimensiones (similar a matrix)
arr <- array(1:6, dim = c(2, 3))

# 3 dimensiones
arr3d <- array(1:12, dim = c(3, 2, 2))
```

### Acceder y modificar

```r
arr[1, 2]         # fila 1, columna 2
arr3d[1, 2, 1]    # fila 1, columna 2, nivel 1
arr[1, 2] <- 10   # modificar
```

## Factores

- Representan **datos categóricos** (valores discretos).
- Se crean con `factor()`.

```r
estado_civil <- c("soltero", "casado", "divorciado")
factor_estado <- factor(estado_civil)

levels(factor_estado)    # ver categorías
is.factor(factor_estado) # verificar si es factor
class(factor_estado)     # "factor"
typeof(factor_estado)    # "integer" (internamente)

factor_estado[1]         # acceder a un valor
```

## Data Frames

- Estructura **tabular** donde cada columna puede tener un tipo diferente.
- Ideal para datos con filas y columnas (como una tabla).

### Crear data frames

```r
df <- data.frame(
  id = 1:3,
  nombre = c("Alice", "Bob", "Charlie"),
  edad = c(25, 30, 35),
  estudiante = c(TRUE, FALSE, TRUE)
)

nrow(df)   # número de filas
ncol(df)   # número de columnas
```

### Acceder a datos

```r
df[1, 3]           # fila 1, columna 3
df[2, ]            # toda la fila 2
df[, 3]            # toda la columna 3
df[, c("id", "edad")]  # columnas por nombre
df$nombre          # columna por nombre con $
```

### Unir data frames

```r
df1 <- data.frame(id = 1:3, nombre = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(nombre = c("Alice", "Bob", "Charlie"), salario = c(50000, 60000, 70000))

# Unir por columna en común
merged <- merge(df1, df2, by = "nombre")

# Cuando las columnas tienen nombres diferentes
df3 <- data.frame(emp_name = c("Alice", "Bob", "Charlie"), salario = c(50000, 60000, 70000))
merged2 <- merge(df1, df3, by.x = "nombre", by.y = "emp_name")
```
