# exceptions handling

# error: es un problema que ocurre durante la ejecución del 
# programa, lo que hace que el programa se detenga.

# warning: es una advertencia que indica que algo no está bien,
# pero el programa puede continuar ejecutándose.

sum <- function(x, y) {
  x + y
}

tryCatch(
  sum(1, "2"),

  # manejo de errores y advertencias
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

# warning: para evitar que el programa se detenga, pero 
# indicando que algo no está bien.

division <- function(x, y) {
  if (y == 0) {
    warning("División por cero.")
    return(NA)
  }
  x / y
}

division(10, 0)
print(division(10, 2))

# suppressWarnings: para suprimir las advertencias
suppressWarnings(division(10, 0))

# stop: para detener la ejecución del programa cuando ocurre un error
division_strict <- function(x, y) {
  if (y == 0) {
    stop("División por cero.")
  }
  x / y
}

tryCatch(
  division_strict(10, 0),
  error = function(e) {
    cat("Error: ", e$message, "\n")
  }
)
