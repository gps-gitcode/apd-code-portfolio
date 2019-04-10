#Hands on exercise with basics of Dataframe 
#Will be using built in 'mtcars' dataset for dataframe practise 

# Printing the built-in dataset mtcars
mtcars

# Using head() function to print only first few observations
head(mtcars)

# Using tail() function to print only last few observations
tail(mtcars)

# Using str() function to get rapid overview or show structure of data set
str(mtcars)

# Create a sample data frame

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)

# Applying the above functions 
head(planets_df)
tail(planets_df)
str(planets_df)
