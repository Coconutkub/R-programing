library(readxl)
r = list()
for (i in 1:3){
  r[[i]] = read_xlsx("./data/students.xlsx",i)
}


library(readr)
r2 = read_table("./data/students.txt")

library(readr)
r3 = read_csv("./data/students2.csv")

library(googlesheets4)
url = "https://docs.google.com/spreadsheets/d/1hGL0b1lY017MRUZg4neuRnwsrtOkYPxOMvUSUxMH33Q/edit?usp=sharing"
gs4_deauth()
r4 = read_sheet(url)

library(jsonlite)
r5 = fromJSON("./data/moc_data_for_json.json")
data.frame(r5)

