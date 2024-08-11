## summary and group_by

imdb %>%
  filter(rating != "")%>%
  group_by(rating) %>%
  summarise(mean_length = mean(length),
            sd_length = sd(length),
            min_length = min(length),
            max_length = max(length),
            n = n())
