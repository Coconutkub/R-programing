##subset การดึงข้อมูลที่สนใจออกมาจาก datastructure

##MOCK
names = c("nut","yok","mook","may")## <--- vector
ages = c(19,19,17,28)
careers = c("college student","college student","student","architect")

data.frame(names,ages,careers)

##or create by list
l1 = list(i1=names,i2=ages,i3=careers)
l1 = data.frame(l1)

##REAL
names[1]


ages[ages>17]

names(ages) = names
ages["nut"]

l1[1,1]
l1[1:4,1:3]
l1[,2:3]

l1[,"i1"]
l1[1,c("i1","i2")]

l1[l1$i1 == "nut",]
View(l1)
