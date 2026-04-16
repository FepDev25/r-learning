# handling csv

csv_data <- read.csv("learn_r/07_input_output/scripts/data/data.csv")
print("CSV data:")
print(csv_data)
print("Class of csv_data:")
print(class(csv_data)) # es un data frame

maximum_marks <- max(csv_data$Marks)
print(paste("Maximum marks:", maximum_marks))

# write a data frame to a csv file
new_data <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                       Age = c(25, 30, 35),
                       City = c("New York", "Los Angeles", "Chicago"))
write.csv(
  new_data,
  "learn_r/07_input_output/scripts/data/new_data.csv",
  row.names = FALSE
)

print("New data written to new_data.csv")

# append data to an existing csv file
additional_data <- data.frame(Name = c("David", "Eve"),
                              Age = c(40, 45),
                              City = c("Houston", "Phoenix"))
write.table(
  additional_data,
  "learn_r/07_input_output/scripts/data/new_data.csv",
  row.names = FALSE,
  col.names = FALSE,
  sep = ",",
  append = TRUE
)
print("Additional data appended to new_data.csv")