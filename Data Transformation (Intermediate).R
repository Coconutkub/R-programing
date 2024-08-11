install.packages("tidyverse")
library(tidyverse)

imdb = read.csv("./data/imdb.csv")

tibble(imdb)
#------------------------------------------------------------------#
set.seed(2) #68
tibble(sample_n(imdb,3))

data.frame(sample_frac(imdb,0.32,replace = T))

tibble(slice(imdb,1:3))
tibble(slice(imdb,c(1,3,5)))
