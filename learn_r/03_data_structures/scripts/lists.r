# lists

# funcion para imprimir listas con bucle
print_list <- function(lst) {
  cat("[")
  for (i in seq_along(lst)) {
    if (i > 1) {
      cat(" , ")
    }
    if (is.list(lst[[i]])) {
      print_list(lst[[i]])
    } else {
      cat(lst[[i]])
    }
  }
  cat("]")
}

my_list <- list("a", 2, TRUE)
cat("My list:\n")
print_list(my_list)

# lists can contain other lists
my_list2 <- list("a", 2, TRUE, list(1, 2, 3))
cat("\nMy list2:\n")
print_list(my_list2)

# insert elements into a list
lista_numeros <- list(1, 2, 3)
lista_numeros[[4]] <- 4
cat("\nLista numeros after adding 4:\n")
print_list(lista_numeros)

sales <- list(2000, 4500, 5600)
sales <- c(sales, 7000) # add 7000 to the end of the list
cat("\nSales after adding 7000:\n")
print_list(sales)
cat("\n", typeof(sales), "\n") # list aun si usamos c()

## acceder y modificar elementos de una lista
dias <- list("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
cat("\nDías de la semana:\n")
print_list(dias)
dia_1 <- dias[[1]] # acceder al primer elemento
cat("\nPrimer día de la semana:", dia_1, "\n")
dias[[1]] <- "Domingo" # modificar el primer elemento
cat("\nDías de la semana después de modificar el primer día:\n")
print_list(dias)

# cada elementos en una lista puede ser otra lista
# asi sea de un solo elemento
lista <- list(1, list(2, 3, 4), list(list(5, 6, 7)))
cat("\nLista anidada:\n")
print_list(lista)
# devuelve una lista con un solo elemento que es la lista anidada
print(lista[1])
print(typeof(lista[1]))
# devuelve el primer elemento de la lista, que es el número 1
print(lista[[1]])
print(typeof(lista[[1]]))
# accediendo a sublistas
print_list(lista[[2]]) # devuelve la sublista [2, 3, 4]
cat("\n")
print_list(lista[[3]]) # devuelve la sublista [[5, 6, 7]]
cat("\n")
print_list(lista[[3]][[1]]) # devuelve la sublista [5, 6, 7]
cat("\n")
print_list(lista[[3]][[1]][1]) # devuelve el número 5
cat("\n")

# named entries in a list, similar to a dictionary in Python
person <- list(name = "Alice", age = 30, city = "New York")
cat("\nPerson list:\n")
print_list(person)
cat("\nAccessing named entries:\n")
cat("Name:", person$name, "\n")
cat("Age:", person$age, "\n")
cat("City:", person$city, "\n")

# verificar si es recursiva
lista <- list(1, list(2, 3), list(list(4, 5)))
cat("\nIs the list recursive?", is.recursive(lista), "\n")
