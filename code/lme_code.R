


library(tidyverse)
library(janitor)
library(here)


# this code will only work when the lme data is spread across multiple lme columns
lme_clean_data<- read_csv(here("data", "Data_total_working_for_r.csv")) %>% 
  #filter(lme== "other") %>% 
  select("first_author", "year", "country", "lme", "lme2") %>% 
  #mutate_all(~replace(., is.na(.), 0)) %>% 
  #clean_names() %>% 
  rowid_to_column(., var = "ID")

# Use gather() function to make the lme data tidy
lme_tidy <- lme_clean_data %>% 
  gather("df", "lme", 5:6)




# Data frame graveyard

# lme_colnames <- c("author", "year", "country", "lme")

# df1_col <- c(lme_clean_data$first_author, lme_clean_data$year, lme_clean_data$country, lme_clean_data$lme)

# df1 <- data.frame(lme_colnames, df1_col)
