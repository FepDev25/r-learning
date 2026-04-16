# Handling txt files

path <- "./learn_r/07_input_output/scripts/data/data.txt"
file_data <- file(path, open = "r") # abrir el archivo en modo lectura
lines <- readLines(file_data) # leer todas las líneas del archivo

for (line in lines) {
  cat(line, "\n") # imprimir cada línea del archivo
}

total_salary <- 0
for (line in lines) {
  words <- strsplit(line, ",")[[1]] # dividir la línea por comas
  # convertir la tercera palabra a un número
  salary <- as.numeric(trimws(words[3])) # trimws para eliminar espacios
  total_salary <- total_salary + salary # sumar el salario al total
}

cat("Total salary:", total_salary, "\n") # imprimir el salario total
# output data to a txt file
output_path <- "./learn_r/07_input_output/scripts/data/output.txt"
output_file <- file(output_path, open = "w")

for (line in lines){
  words <- strsplit(line, ",")[[1]]
  salary <- as.numeric(trimws(words[3]))
  months_worked <- as.numeric(trimws(words[5]))
  total_earned <- salary * months_worked
  output_line <- paste(
    words[1], words[2], words[3], words[4], words[5], total_earned, sep = ", "
  )
  # escribir la línea formateada en el archivo de salida
  writeLines(output_line, output_file)
  print(output_line) # imprimir la línea formateada en la consola
}

close(file_data) # cerrar el archivo después de leerlo
close(output_file) # cerrar el archivo después de escribirlo
