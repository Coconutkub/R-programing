#bind_row()
#คล้ายกับการ JOIN ALL ของ
library(dplyr)
library(readr)
data_section = list()
data_section[[1]] = read_excel("./data/students.xlsx",1)
data_section[[2]] = read_excel("./data/students.xlsx",2)
data_section[[3]] = read_excel("./data/students.xlsx",3)

full_data = bind_rows(data_section)
