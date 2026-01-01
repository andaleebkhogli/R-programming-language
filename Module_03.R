# Data Frames
install.packages("tidyverse")

library(tidyverse)

names <- c("Andaleeb","Ahmed","Zien")

age <- c(29, 33, 2)

people <- data.frame(names, age)

head(people)

str(people)

glimpse(people)

colnames(people)

mutate(people, age_in_20 = age + 20)


# Tibbles in R
install.packages("tidyverse")
library(tidyverse) 
data(diamonds)
View(diamonds)


as_tibble(diamonds)

diamonds_tibble <- as_tibble(diamonds)

data(mtcars)



