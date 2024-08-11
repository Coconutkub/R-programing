#join data join table

favourite_films = data.frame(id = c(5,10,25,30,98))

favourite_films %>%
  inner_join(imdb, by = c("id" = "no"))
