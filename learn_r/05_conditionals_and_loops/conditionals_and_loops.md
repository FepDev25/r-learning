# Condicionales y Bucles

## Condicionales

Permiten ejecutar código según se cumpla o no una condición.

### `if-else`

```r
x <- 50

if (x > 0) {
  print("x es positivo")
} else if (x < 0) {
  print("x es negativo")
} else {
  print("x es cero")
}
```

### `if-else` anidado

```r
if (x %% 2 == 0) {
  print("x es par")
  if (x > 10) {
    print("x es mayor que 10")
  } else {
    print("x es menor o igual que 10")
  }
} else {
  print("x es impar")
}
```

### Operador `%in%` en condicionales

```r
vector <- c(1, -2, 3, -4, 5)
x <- 50

if (!x %in% vector) {
  print("x no está en el vector")
} else {
  print("x está en el vector")
}
```

### Función `ifelse()`

Versión vectorizada: evalúa una condición sobre **cada elemento** de un vector.

```r
vector <- c(1, -2, 3, -4, 5)
result <- ifelse(vector > 0, "positivo", "negativo")
# result → ["positivo", "negativo", "positivo", "negativo", "positivo"]
```

### `switch`

Evalúa un valor y ejecuta el caso correspondiente:

```r
day <- "Monday"
message <- switch(day,
  "Monday" = "Inicio de semana",
  "Tuesday" = "Segundo día",
  "Wednesday" = "Mitad de semana",
  "Friday" = "Último día laboral",
  "Saturday" = "Fin de semana!",
  "Sunday" = "Fin de semana!",
  "Día inválido"  # valor por defecto
)
```

## Bucles

### `while`

Ejecuta un bloque mientras se cumpla la condición:

```r
number <- 10
while (number > 0) {
  print(number)
  number <- number - 1
}
```

### `for`

Itera sobre cada elemento de un vector:

```r
vector <- c(1, -2, 3, -4, 5)
for (i in vector) {
  print(paste("valor:", i))
}
```

### `for` con secuencias

```r
for (i in 1:10) {
  print(i)
}
```

### Bucles anidados

```r
for (i in 1:5) {
  for (j in 1:5) {
    print(paste(i, "x", j, "=", i * j))
  }
}
```

### `repeat`

Ejecuta un bloque **infinitamente** hasta que se use `break`:

```r
k <- 0
repeat {
  k <- k + 1
  print(k)
  if (k >= 10) {
    break
  }
}
```

### `break` y `next`

- **`break`**: sale del bucle inmediatamente.
- **`next`**: salta a la siguiente iteración.

```r
for (i in 1:10) {
  if (i == 3) {
    next        # salta el 3
  }
  if (i == 7) {
    break       # sale al llegar al 7
  }
  print(i)      # imprime: 1, 2, 4, 5, 6
}
```
