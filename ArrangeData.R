## arrange data 

#น้อยไปมาก
imdb%>%
  select(rating,length)%>%
  arrange(rating,length)%>%
  head(10)

#มากไปน้อย
imdb%>%
  select(rating,length)%>%
  arrange(rating,desc(length))%>%
  head(10)
