# Entrada y Salida

R proporciona diversas funciones para leer y escribir datos desde y hacia diferentes fuentes: consola, archivos de texto, archivos CSV, entre otros.

## Input desde consola

Para leer entrada del usuario desde la terminal:

```r
sum <- function(x, y) {
  x + y
}

print("Enter two numbers to calculate their sum:")
input <- file("stdin")
user_input <- readLines(input, 2)  # lee dos líneas

x <- as.numeric(user_input[1])
y <- as.numeric(user_input[2])

result <- sum(x, y)
cat("The sum of", x, "and", y, "is", result, "\n")
```

## Manejo de archivos de texto

### Lectura de archivos

Para leer archivos de texto línea por línea:

```r
path <- "./data/data.txt"
file_data <- file(path, open = "r")
lines <- readLines(file_data)

for (line in lines) {
  cat(line, "\n")
}

close(file_data)
```

### Procesar datos de archivos

Ejemplo: sumar valores numéricos de un archivo CSV delimitado por comas:

```r
lines <- readLines(file_data)
total_salary <- 0

for (line in lines) {
  words <- strsplit(line, ",")[[1]]
  salary <- as.numeric(trimws(words[3]))
  total_salary <- total_salary + salary
}

cat("Total salary:", total_salary, "\n")
```

### Escritura de archivos

Para escribir datos en un archivo de texto:

```r
output_path <- "./data/output.txt"
output_file <- file(output_path, open = "w")

for (line in lines) {
  words <- strsplit(line, ",")[[1]]
  salary <- as.numeric(trimws(words[3]))
  months_worked <- as.numeric(trimws(words[5]))
  total_earned <- salary * months_worked

  output_line <- paste(
    words[1], words[2], words[3], words[4], total_earned,
    sep = ", "
  )
  writeLines(output_line, output_file)
}

close(output_file)
```

> **Nota**: Siempre usa `close()` después de terminar de leer o escribir en un archivo.

## Manejo de archivos CSV

### Lectura de CSV

La función `read.csv()` lee archivos CSV y los convierte automáticamente en un data frame:

```r
csv_data <- read.csv("data/data.csv")
print(csv_data)
print(class(csv_data))  # "data.frame"
```

### Operaciones con datos CSV

Una vez cargado, puedes trabajar con los datos usando operaciones de data frame:

```r
csv_data <- read.csv("data/data.csv")

maximum_marks <- max(csv_data$Marks)
print(paste("Maximum marks:", maximum_marks))
```

### Escritura de CSV

Para guardar un data frame en un archivo CSV:

```r
new_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  City = c("New York", "Los Angeles", "Chicago")
)

write.csv(
  new_data,
  "data/new_data.csv",
  row.names = FALSE  # omite números de fila
)
```

### Añadir datos a CSV existente

Para agregar datos a un archivo CSV sin sobrescribirlo:

```r
additional_data <- data.frame(
  Name = c("David", "Eve"),
  Age = c(40, 45),
  City = c("Houston", "Phoenix")
)

write.table(
  additional_data,
  "data/new_data.csv",
  row.names = FALSE,
  col.names = FALSE,   # no escribir nombres de columnas al añadir
  sep = ",",
  append = TRUE        # añadir en lugar de sobrescribir
)
```

## Funciones clave

| Función | Descripción |
|---------|-------------|
| `file(path, open)` | Abre un archivo de texto |
| `readLines(file)` | Lee todas las líneas de un archivo |
| `writeLines(text, file)` | Escribe texto en un archivo |
| `close(file)` | Cierra un archivo abierto |
| `read.csv(path)` | Lee un archivo CSV (devuelve data frame) |
| `write.csv(df, path)` | Escribe un data frame en CSV |
| `write.table(df, path, append = TRUE)` | Añade datos a un archivo existente |
| `strsplit(text, sep)` | Divide texto por separador |
| `trimws(text)` | Elimina espacios en blanco |
| `cat(...)` | Imprime en consola |
| `print(obj)` | Imprime un objeto |
