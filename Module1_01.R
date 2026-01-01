print("Hello wolrd!")

install.packages("tidyverse")
library(tidyverse) 
head(diamonds)

str(diamonds)
glimpse(diamonds)

rename(diamonds, carat_new = carat)
print(diamonds)

rename(diamonds, carat_new = carat, cut_new = cut)
print(diamonds)


ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()

ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point()


ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)