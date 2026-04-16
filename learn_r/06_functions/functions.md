# Funciones

Las funciones en R permiten encapsular código reutilizable. R soporta retorno implícito (la última expresión evaluada se devuelve automáticamente).

## Funciones básicas

Definición simple de una función con retorno implícito:

```r
even_odd <- function(x) {
  if (x %% 2 == 0) {
    "even"
  } else {
    "odd"
  }
}

result_1 <- even_odd(4)   # "even"
result_2 <- even_odd(7)   # "odd"
```

## Argumentos por defecto

Las funciones pueden tener valores predeterminados para sus parámetros:

```r
greet <- function(name = "World") {
  paste("Hello,", name)
}

greet("Alice")  # "Hello, Alice"
greet()         # "Hello, World"
```

## Múltiples argumentos

Las funciones pueden aceptar múltiples parámetros:

```r
add_numbers <- function(a, b) {
  a + b
}

add_numbers(10, 20)  # 30
```

## Múltiples valores de retorno

Para devolver múltiples valores, usa una lista:

```r
calculate <- function(x, y) {
  sum <- x + y
  product <- x * y
  list(sum = sum, product = product)
}

result <- calculate(5, 3)
# result$sum → 8
# result$product → 15
```

## Funciones con vectores

Las funciones pueden procesar vectores iterando sobre sus elementos:

```r
vector_sum <- function(vec) {
  sum <- 0
  for (i in vec) {
    sum <- sum + i
  }
  sum
}

vector_sum(c(10, 20, 30, 40, 50))  # 150
```

## Funciones anidadas

Las funciones pueden llamar a otras funciones definidas previamente:

```r
suma <- function(x, y) {
  x + y
}

resta <- function(x, y) {
  x - y
}

operar <- function(a, b) {
  sum_result <- suma(a, b)
  rest_result <- resta(a, b)
  list(sum = sum_result, rest = rest_result)
}

operar(10, 5)
# $sum → 15, $rest → 5
```

## Funciones definidas dentro de otras funciones

Es posible definir funciones internas (solo accesibles dentro de la función externa):

```r
outer_function <- function(x) {
  inner_function <- function(y) {
    y * 2
  }
  inner_function(x) + 10
}

outer_function(5)  # 20
```

## Recursión

Las funciones pueden llamarse a sí mismas. Útil para problemas que se pueden dividir en subproblemas idénticos.

### Factorial

```r
factorial <- function(n) {
  if (n == 0) {
    1
  } else {
    n * factorial(n - 1)
  }
}

factorial(5)  # 120
```

### Fibonacci

```r
fibonacci <- function(n) {
  if (n == 0) {
    0
  } else if (n == 1) {
    1
  } else {
    fibonacci(n - 1) + fibonacci(n - 2)
  }
}

fibonacci(10)  # 55
```
