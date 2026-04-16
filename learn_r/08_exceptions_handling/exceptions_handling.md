# Manejo de Excepciones

R proporciona herramientas robustas para manejar errores y advertencias que pueden ocurrir durante la ejecución del código.

## Tipos de problemas

- **Error**: Problema que ocurre durante la ejecución y detiene el programa.
- **Warning**: Advertencia que indica que algo no está bien, pero el programa continúa ejecutándose.

## `tryCatch`

Permite capturar y manejar errores, advertencias y ejecutar código independientemente del resultado.

```r
sum <- function(x, y) {
  x + y
}

tryCatch(
  sum(1, "2"),  # esto generará un error

  error = function(e) {
    cat("Error: ", e$message, "\n")
  },
  warning = function(w) {
    cat("Warning: ", w$message, "\n")
  },
  finally = {
    cat("This will always be executed.\n")
  }
)
```

El bloque `finally` se ejecuta siempre, independientemente de si hubo error o no.

## Generar advertencias

Usa `warning()` para indicar problemas no críticos:

```r
division <- function(x, y) {
  if (y == 0) {
    warning("División por cero.")
    return(NA)
  }
  x / y
}

division(10, 0)   # warning + NA
division(10, 2)   # 5
```

## Suprimir advertencias

Usa `suppressWarnings()` para evitar que las advertencias se muestren:

```r
suppressWarnings(division(10, 0))  # devuelve NA sin mostrar el warning
```

## Detener ejecución con `stop`

Usa `stop()` para detener el programa cuando ocurre un error crítico:

```r
division_strict <- function(x, y) {
  if (y == 0) {
    stop("División por cero.")
  }
  x / y
}
```

El programa se detendrá y mostrará el error si se intenta dividir por cero.

## Combinando `stop` con `tryCatch`

```r
tryCatch(
  division_strict(10, 0),
  error = function(e) {
    cat("Error: ", e$message, "\n")
  }
)
# Output: Error:  División por cero.
```

## Resumen de funciones

| Función | Descripción |
|---------|-------------|
| `tryCatch(expr, error, warning, finally)` | Maneja errores y advertencias |
| `warning(msg)` | Genera una advertencia |
| `stop(msg)` | Detiene el programa con un error |
| `suppressWarnings(expr)` | Suprime advertencias |
