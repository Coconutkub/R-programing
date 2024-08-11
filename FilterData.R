library(dplyr)
imdb = read.csv("./data/imdb.csv")

imdb %>% 
  filter(imdb,SCORE>5)

names(imdb) = tolower(names(imdb))

imdb %>% 
  filter(score>8.5 & (year>2000 | year==2000))


imdb %>%
  select(movie_name,length,score) %>%
  filter(score %in% c(8.6,8.7))

imdb %>%
  select(movie_name,rating)%>%
  filter(rating == "R")%>%
  head()

imdb %>%
  select(movie_name,rating)%>%
  filter(movie_name == "the")

imdb %>%
  select(movie_name,rating)%>%
  filter(grepl("the",imdb$movie_name))
