df1 = data.frame(
  id = 1:5,
  name = c("nut","nut","nut","nut","nut")
)
df2 = data.frame(
  id = 1:5,
  c(rep("BKK",3),rep("BNN",2))
)

df3 = bind_cols(df1,df2)
df4 = left_join(df1,df2,by = "id")