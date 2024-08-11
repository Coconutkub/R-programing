#install.packages("dplyr")

library(dplyr)

imdb = read.csv("./data/imdb.csv",stringsAsFactors = FALSE)

#review data type

glimpse(imdb)

#print head and tail of example data 
head(imdb,10)
tail(imdb,10)
