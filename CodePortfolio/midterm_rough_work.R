#Question 1
us_epa <- read.csv(file = "./Data/us_epa_data_2017.csv")
colSums(is.na(us_epa))
head(us_epa)

colnames(us_epa)
names(us_epa)

#Question 17
str(faithful)
round(quantile(faithful$eruptions,0.25),2)

#Question 20
library(nycflights13)
library(tidyverse)
library(dplyr)
flights
flights %>%
  dplyr::filter(month==1 | month==6) %>%
  dplyr::count(month)

#Question 2
library(tidyverse)
library(corrplot)
str(mtcars)
v_mtcars <- dplyr::select(mtcars,-cyl, -gear, -carb, -am, - vs)
names(v_mtcars)
corrplot::corrplot(cor(v_mtcars), method = "ellipse")

str(mtcars)
names(mtcars)
ncol(mtcars)


#Question 7
library(tidyverse)
sd(mtcars[["mpg"]])
IQR(mtcars[["mpg"]])
mad(mtcars[["mpg"]])
str(mtcars)

# Question 4
library(tidyverse)
library(matrixStats)
mean(mtcars[["mpg"]])
mean(mtcars[["mpg"]], trim=0.1)
median(mtcars[["mpg"]])
weighted.mean(mtcars[["mpg"]], w=mtcars[["wt"]])
weightedMedian(mtcars[["mpg"]], w=mtcars[["wt"]])

#Question 18
library(tidyverse)
library(dplyr)
str(iris)

iris %>%
  dplyr::filter(Petal.Length > 4.5) %>%
  group_by(Species) %>%
  summarise(disp = mean(Sepal.Length), sd = sd(Sepal.Width), max = max(Petal.Length))

v_iris <- iris %>%
  dplyr::filter(iris$Petal.Length > 4.5)

v_iris <- v_iris %>%
  dplyr::group_by(v_iris$Species)

v_iris %>%
  dplyr::group_by(v_iris$Species) 

v_iris %>%
  dplyr::summarise(mean = mean(v_iris$Sepal.Length, sd=sd(v_iris$Sepal.Width, max = max(v_iris$Petal.Length))))

# Question 13
library(tidyverse)
ggplot(data = mpg, ) + 
  geom_point(mapping = aes(x = displ, y = hwy),colour = "black", fill = "red", shape = 24, size =3)

#Question 19
library(ggplot2)
library(dplyr)
str(diamonds)
nrow(diamonds)
ncol(diamonds)
diamonds %>%
  dplyr::count(color)

#Practise 
library(stocks)

