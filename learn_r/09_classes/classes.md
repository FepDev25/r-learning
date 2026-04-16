# Clases y Programación Orientada a Objetos

R tiene tres sistemas de clases: **S3**, **S4** y **R6**. Cada uno ofrece diferentes niveles de formalidad y flexibilidad.

## S3

El sistema de clases más simple y flexible, pero también el menos formal. Se basa en asignar una clase a una lista.

### Crear clase S3

```r
student_list <- list(name = "John", age = 20, grade = "A")
class(student_list) <- "Student"

print(student_list)
# $name
# [1] "John"
# $age
# [1] 20
# $grade
# [1] "A"
# attr(,"class")
# [1] "Student"
```

S3 usa convenciones en lugar de reglas estrictas. La clase se asigna como un atributo del objeto.

## S4

Sistema más formal y riguroso. Permite definir clases con atributos (slots) específicos y tipos de datos definidos.

### Definir clase S4

```r
setClass(
  "person",
  slots = list(name = "character", age = "numeric")
)
```

### Agregar métodos a S4

```r
setMethod(
  "show",
  "person",
  function(object) {
    cat("Name:", object@name, "\n")
    cat("Age:", object@age, "\n")
  }
)
```

### Crear instancia de S4

```r
person_list <- new("person", name = "Alice", age = 30)
show(person_list)
# Name: Alice
# Age: 30
```

> **Nota**: En S4, se usa `@` para acceder a los slots.

## R6

Sistema más moderno y verdaderamente orientado a objetos. Permite definir clases con métodos y atributos públicos y privados, similar a lenguajes como Java o Python.

### Crear clase R6

```r
library(R6)

Person <- R6Class("Person",
  public = list(
    name = NULL,
    age  = NULL,

    initialize = function(name, age) {
      self$name <- name
      self$age  <- age
    },

    update_age = function() {
      self$age <- self$age + 1
    },

    print_person = function() {
      cat("Name:", self$name, "\n")
      cat("Age:",  self$age,  "\n")
    }
  )
)
```

### Crear y usar instancia de R6

```r
person_list <- Person$new(name = "Adam", age = 72)
person_list$print_person()
# Name: Adam
# Age: 72

person_list$update_age()
print("After updating age:")
person_list$print_person()
# Name: Adam
# Age: 73
```

> **Nota**: En R6, se usa `$` para acceder a atributos y métodos.

## Comparación de sistemas

| Característica | S3 | S4 | R6 |
|----------------|----|----|----|
| Formalidad | Baja | Alta | Alta |
| Sintaxis | `obj$name` | `obj@slot` | `obj$method()` |
| Métodos | Convenios | `setMethod()` | Definidos en clase |
| Herencia | Simple | Múltiple | Múltiple |
| Mutabilidad | No formal | Sí | Sí |
| Caso de uso | Funciones genéricas | Paquetes robustos | OOP clásico |

## Cuándo usar cada sistema

- **S3**: Para funciones genéricas simples y cuando necesitas flexibilidad.
- **S4**: Para paquetes que requieren validación estricta de tipos.
- **R6**: Para aplicaciones OOP tradicionales con estado mutable y métodos de instancia.
