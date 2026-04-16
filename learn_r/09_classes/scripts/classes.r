# classes
# R tiene tres sistemas de clases: S3, S4 y R6

# S3
# es el sistema de clases más simple y flexible, pero también el menos formal
student_list <- list(name = "John", age = 20, grade = "A")
class(student_list) <- "Student"

print("S3 class: Student")
print(student_list)

# S4
# es un sistema de clases más formal y riguroso, que permite definir clases 
# con atributos y métodos específicos
setClass(
  "person",
  slots = list(name = "character", age = "numeric")
)
# agregar un método para mostrar la información de la persona
setMethod(
  "show",
  "person",
  function(object) {
    cat("Name:", object@name, "\n")
    cat("Age:", object@age, "\n")
  }
)

person_list <- new("person", name = "Alice", age = 30)
print("S4 class: person")
show(person_list)

# R6
# es un sistema de clases más moderno y orientado a objetos, que permite definir
# clases con métodos y atributos públicos y privados

library(R6)

person <- R6Class("Person",
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

person_list <- person$new(name = "Adam", age = 72)
print("R6 class: Person")
person_list$print_person()
person_list$update_age()
print("After updating age:")
person_list$print_person()
