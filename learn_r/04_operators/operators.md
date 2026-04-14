# Operadores en R

## Operadores aritméticos

Realizan operaciones matemáticas entre números o vectores.

| Operador | Descripción       | Ejemplo       | Resultado |
| -------- | ----------------- | ------------- | --------- |
| `+`      | Suma              | `10 + 3`      | `13`      |
| `-`      | Resta             | `10 - 3`      | `7`       |
| `*`      | Multiplicación    | `10 * 3`      | `30`      |
| `/`      | División          | `10 / 3`      | `3.33`    |
| `^`      | Potencia          | `10 ^ 3`      | `1000`    |
| `%%`     | Módulo (residuo)  | `10 %% 3`     | `1`       |
| `%/%`    | División entera   | `10 %/% 3`    | `3`       |

### Con vectores

Los operadores se aplican **elemento a elemento**:

```r
v1 <- c(10, 20, 30)
v2 <- c(1, 2, 3)
v1 + v2    # [11, 22, 33]
v1 * v2    # [10, 40, 90]
```

### Con escalares

Un escalar se aplica a **todos los elementos** del vector:

```r
v <- c(10, 20, 30)
v + 5      # [15, 25, 35]
v * 2      # [20, 40, 60]
```

## Operadores relacionales

Comparan dos valores y devuelven un valor lógico (`TRUE` o `FALSE`).

| Operador | Descripción            | Ejemplo       | Resultado |
| -------- | ---------------------- | ------------- | --------- |
| `==`     | Igual a                | `10 == 3`     | `FALSE`   |
| `!=`     | Distinto de            | `10 != 3`     | `TRUE`    |
| `<`      | Menor que              | `10 < 3`      | `FALSE`   |
| `<=`     | Menor o igual que      | `10 <= 10`    | `TRUE`    |
| `>`      | Mayor que              | `10 > 3`      | `TRUE`    |
| `>=`     | Mayor o igual que      | `10 >= 3`     | `TRUE`    |
| `%in%`   | Pertenece a            | `1 %in% v`    | `TRUE/FALSE` |

### Con vectores

La comparación se hace **elemento a elemento**:

```r
v1 <- c(10, 20, 30)
v2 <- c(10, 25, 30)
v1 == v2   # [TRUE, FALSE, TRUE]
v1 > v2    # [FALSE, FALSE, FALSE]
```

### Operador `%in%`

Verifica si un valor está dentro de un vector:

```r
v <- c(10, 20, 30)
10 %in% v    # TRUE
15 %in% v    # FALSE
```

## Operadores lógicos

Combinan expresiones lógicas.

| Operador    | Descripción                          | Ejemplo                      |
| ----------- | ------------------------------------ | ---------------------------- |
| `&`         | AND (elemento a elemento en vectores) | `(x > 0) & (x < 10)`         |
| `\|`        | OR (elemento a elemento en vectores)  | `(x > 0) \| (x < -5)`        |
| `&&`        | AND (solo primer elemento)           | `(x > 0) && (y > 0)`         |
| `\|\|`      | OR (solo primer elemento)            | `(x > 0) \|\| (y > 0)`       |
| `!`         | NOT (negación)                       | `!TRUE` → `FALSE`            |
| `xor()`     | XOR (solo uno verdadero)             | `xor(TRUE, FALSE)` → `TRUE`  |

### Diferencia entre `&` y `&&`

- `&` compara **todos los elementos** de vectores.
- `&&` solo evalúa el **primer elemento** (útil en condicionales simples).

```r
# Con vectores
c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, TRUE)   # [TRUE, FALSE, FALSE]

# Con escalares
edad <- 25
tiene_licencia <- TRUE
(edad >= 18) & tiene_licencia   # TRUE
```

### NOT

Invierte un valor lógico:

```r
disponible <- TRUE
!disponible    # FALSE
```

### XOR

Devuelve `TRUE` solo si **uno** de los dos es verdadero:

```r
xor(TRUE, FALSE)    # TRUE
xor(TRUE, TRUE)     # FALSE
xor(FALSE, FALSE)   # FALSE
```

## Operadores de asignación

Asignan valores a variables.

| Operador | Descripción             | Ejemplo      |
| -------- | ----------------------- | ------------ |
| `<-`     | Asignación (estándar)   | `x <- 5`     |
| `=`      | Asignación (alternativo)| `x = 5`      |
| `->`     | Asignación derecha      | `5 -> x`     |

> **Convención**: `<-` es el operador de asignación preferido en R.
