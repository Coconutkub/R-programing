imdb %>%
  select(movie_name,score)%>%
  mutate(score_group=if_else(score>9,"HIGH","LOW"))%>%
  head(10)

imdb %>%
  select(movie_name,year,score)%>%
  mutate(score_group=if_else(score>9,"HIGH","LOW"),
         score = score + 0.01,
         age = if_else(year>2000,"young","old"))%>%
  head(10)

