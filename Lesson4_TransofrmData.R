emp_id<- c(1:10)
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(emp_id, first_name, last_name, job_title)

print(employee)

# To combine first and last name
unite(employee, "full name", first_name, last_name, sep=' ')

# To use mutate

view(penguins)

penguins %>%
  mutate(body_mass_kg=body_mass/1000)