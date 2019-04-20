#Book Reference :  https://r4ds.had.co.nz/ - R for Data Science
library(tidyverse) #Collection of R package designed for data science

# readr’s functions: for turning flat files into data frames:
  
# read_csv() reads comma delimited files, 
# read_csv2() reads semicolon separated files (common in countries where , is used as the decimal place), 
# read_tsv() reads tab delimited files, and read_delim() reads in files with any delimiter.
# read_fwf() reads fixed width files. 
# read_table() reads a common variation of fixed width files where columns are separated by white space.
# read_log() reads Apache style log files. webreadris built on top of read_log() and provides many more helpful tools.

# These functions all have similar syntax. Below demo is for read.csv()

#Read csv file 
glass <- read_csv("data/glass.csv")

#Reading inline file 
df1 <- read_csv("a,b,c
1,2,3
4,5,6")


# Parser: Eight important parsers to deal with different type of data:
  
# parse_logical() and parse_integer() parse logicals and integers respectively.
# parse_double() is a strict numeric parser, and parse_number() is a flexible numeric parser to parse different number across world.
# parse_character() to parse character different encodings.
# parse_factor() create factors, the data structure that R uses to represent categorical variables with fixed and known values.
# parse_datetime(), parse_date(), and parse_time() allow you to parse various date & time specifications.


#Parser integer example
parse_integer(c("123", "345", "abc", "123.45"))

#Parser double example
parse_double("1,23", locale = locale(decimal_mark = ","))

#Parsing Character example
x1 <- "El Ni\xf1o was particularly bad this year"
parse_character(x1, locale = locale(encoding = "Latin1"))


