# logical operators

# AND (&) - Verdadero si ambas condiciones son verdaderas
print("--- AND (&) ---")
edad <- 25
tiene_licencia <- TRUE
print(paste("Edad:", edad, "Tiene licencia:", tiene_licencia))
puede_conducir <- (edad >= 18) & tiene_licencia
print(paste("¿Puede conducir?:", puede_conducir))

# AND (&&) - Evalúa solo el primer elemento
print("")
print("--- AND (&&) ---")
salario <- 3000
experiencia <- 5
print(paste("Salario:", salario, "Años experiencia:", experiencia))
eligible_promotion <- (salario > 2500) && (experiencia > 3)
print(paste("¿Elegible para promoción?:", eligible_promotion))

# OR (|) - Verdadero si al menos una condición es verdadera
print("")
print("--- OR (|) ---")
es_fin_de_semana <- TRUE
es_feriado <- FALSE
print(paste("¿Fin de semana?:", es_fin_de_semana, "¿Feriado?:", es_feriado))
no_trabajar <- es_fin_de_semana | es_feriado
print(paste("¿No trabajar?:", no_trabajar))

# OR (||) - Evalúa solo el primer elemento
print("")
print("--- OR (||) ---")
tiene_descuento_cliente <- FALSE
tiene_descuento_empleado <- TRUE
cat("Descuento cliente:", tiene_descuento_cliente, "\n")
cat("Descuento empleado:", tiene_descuento_empleado, "\n")
aplicar_descuento <- tiene_descuento_cliente || tiene_descuento_empleado
print(paste("¿Aplicar descuento?:", aplicar_descuento))

# NOT (!) - Invierte el valor lógico
print("")
print("--- NOT (!) ---")
producto_disponible <- TRUE
print(paste("¿Producto disponible?:", producto_disponible))
mostrar_agotado <- !producto_disponible
print(paste("¿Mostrar 'Agotado'?:", mostrar_agotado))

# XOR - Verdadero si solo una condición es verdadera
print("")
print("--- XOR ---")
tiene_gato <- TRUE
tiene_perro <- FALSE
print(paste("¿Tiene gato?:", tiene_gato, "¿Tiene perro?:", tiene_perro))
solo_una_mascota <- xor(tiene_gato, tiene_perro)
print(paste("¿Solo una mascota?:", solo_una_mascota))