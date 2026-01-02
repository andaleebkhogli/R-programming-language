# Installing packages

install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

# Loading library of the package

library(tidyverse)
library(skimr)
library(janitor)

# Loading data inside a data frame

bookings_df <- read_csv("D:\\Studying\\R Language\\GDA_Practice\\hotel_bookings.csv")

# view data
head(bookings_df)

str(bookings_df)


glimpse(bookings_df)


colnames(bookings_df)

# to get detailed summary of data
skim_without_charts(bookings_df)

# Step 4 cleaning data
trimmed_df <- bookings_df %>% 
  select('hotel', 'is_canceled', 'lead_time')

print(trimmed_df)


# Rename hotel column
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)

#split or combine data in different columns.combine the arrival month and year into one column using the unite()
split_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
print(split_df)





# Step 5 Manipulate using mutate() function
#add new column contain number of children adults as number of people per reservation
manipulated_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

head(manipulated_df)



#Step 6 Calculate summary of stats


cancel_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

head(cancel_df)
