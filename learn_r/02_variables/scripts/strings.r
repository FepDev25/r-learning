# cadenas

# string usando comillas dobles
cat("Aprendiendo R")

# string vacio
cat("")

# secuencias de escapa
cat("Aprender\nes\nmuy\nimportante")
cat("Aprender\tes\timportante")

# length de un string
cat(nchar("Aprendiendo R"))

# concatenar strings
name <- "Felipe"
age <- 21
paste("Mi nombre es", name, "y tengo", age, "años.")

# cambiar separador
paste("Mi nombre es", name, "y tengo", age, "años.", sep = "-")

# duplicar un string
rep("R", times = 5)
