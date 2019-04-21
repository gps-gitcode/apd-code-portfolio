#Book Reference :  https://r4ds.had.co.nz/ - R for Data Science
library(tidyverse) #Collection of R package designed for data science

#Read file for analysis 
glass <- read_csv("data/glass.csv")

#Analyzing data after importing 

dim(glass) #dimension of data. Total Observations and variables
colnames(glass) #Display column names
nrow(glass) #print row count
ncol(glass) #print column count
summary(glass) #print summary of the dataset
head(glass, n = 5) #print top 5 rows
tail(glass, n = 5) #print last 5 rows
nycflights13::flights %>%  #Alternative way to print data by limiting it
  print(n = 10, width = Inf)

nycflights13::flights %>% #Scrollable view of the data
  View()

#Q-Q plot example
mpg_hp_add = lm(mpg ~ hp + am, data = mtcars)
qqnorm(resid(mpg_hp_add), col = "darkgrey")
qqline(resid(mpg_hp_add), col = "dodgerblue", lwd = 2)