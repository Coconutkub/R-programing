#use SQL in R
library(sqldf)
library(readr)

school = read_csv("./data/school.csv") 
sqldf("select * from school")

order1 = "select * from school
          where school_id < 5"
