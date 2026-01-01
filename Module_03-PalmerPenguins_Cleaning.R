install.packages("palmerpenguins")

library(palmerpenguins)
data(package = 'palmerpenguins')

library(tidyverse)

# Arrange in ascending order
penguins %>% arrange(bill_length_mm) 

# Arrange in descending order
penguins %>% arrange(-bill_length_mm) 

penguins2 <- penguins %>% arrange(-bill_length_mm) 
View(penguins2)

# Summarize by mean bill length using group by
penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarize(mean_bill_length_mm = mean(bill_length_mm))

#Summarize by max bill length and mean bill length
penguins %>%
  group_by(species, island) %>%
  drop_na() %>%
  summarize(maxb1 = max(bill_depth_mm) , mean_b1 = mean(bill_length_mm))

# Filter using filter function
penguins %>%
  filter (species == "Adelie")
