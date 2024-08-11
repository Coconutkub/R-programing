library(dplyr)

imdb = read.csv("./data/imdb.csv")

select(imdb,year = YEAR )

#pipe operatior
# %>%

imdb %>% 
  select(,year = YEAR) %>%
  head(10)
