# Variables y Tipos de Datos

## Variables

- Las variables se usan para almacenar datos.
- Se asignan con el operador `<-`.
- R es dinámico: el tipo de una variable puede cambiar asignando un nuevo valor.

![Data types](data_types.png)

## Tipos de datos

| Tipo        | Descripción                        | Ejemplo               |
| ----------- | ---------------------------------- | --------------------- |
| `numeric`   | Números con decimales              | `4.56`, `10`          |
| `integer`   | Números enteros                    | `3:10`                |
| `character` | Cadenas de texto                   | `"hola"`, `"10"`      |
| `logical`   | Valores booleanos                  | `TRUE`, `FALSE`       |
| `complex`   | Números complejos                  | `5i`                  |

## `class()` vs `typeof()`

- **`class()`**: categoría general del objeto (ej. `"numeric"`, `"character"`).
- **`typeof()`**: cómo se almacena internamente en memoria (ej. `"double"`, `"integer"`).

## Funciones básicas para variables

```r
x <- 5
ls()            # lista todas las variables en el entorno
rm(x)           # elimina una variable
typeof(x)       # tipo interno de x
length(x)       # longitud de x
```

## Strings

- Se crean con comillas dobles `""` o simples `''`.
- `cat()`: imprime texto limpio sin comillas.
- `nchar()`: devuelve la cantidad de caracteres.
- `paste()`: concatena strings (acepta `sep` para cambiar el separador).
- `rep()`: repite un string n veces.

```r
cat("Aprendiendo R\n")
nchar("Hola")                    # 4
paste("Hola", "mundo")           # "Hola mundo"
paste("Hola", "mundo", sep = "-") # "Hola-mundo"
rep("R", times = 3)              # "R" "R" "R"
```

### Secuencias de escape

![Escape sequences](escape_sequences.png)

## `cat()` vs `print()`

| Función   | Comportamiento                                            |
| --------- | --------------------------------------------------------- |
| `print()` | Muestra el objeto con formato (comillas en strings, etc.) |
| `cat()`   | Imprime texto limpio sin comillas ni formato adicional    |
