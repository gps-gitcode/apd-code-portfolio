#Book Reference :  https://r4ds.had.co.nz/ - R for Data Science
library(tidyverse) #Collection of R package designed for data science

#Reading file with appropriate header, and seperater
heartData <- read.csv("data/Heart.csv", header = TRUE, sep = ",")

#Omitting NA values from data
heartData <- na.omit(heartData)

#Working to Tibble 

#Tibble - is unifying feature of tidyverse. It is data frame with additional behaviors. 

as_tibble(iris) #convert existing dataframe into tibble 
tibble( #create new data frame
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

#Refined and controlled printing with tibble
tibble(
  a = lubridate::now() + runif(1e3) * 86400,
  b = lubridate::today() + runif(1e3) * 30,
  c = 1:1e3,
  d = runif(1e3),
  e = sample(letters, 1e3, replace = TRUE)
)

#Subsetting example of data
df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

df$x #Extract by name
df[["x"]] #Extract by column name
df[[1]] #Extracting by column position
