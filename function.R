##function
item = c(10,20,30,40,50)
sum(item)

##create own function 
greeting = function(){
  print("hi")
}

greeting_v2 = function(name = "nut",age = 18){##<- default Argument
  print(paste("HI",name))
  print(paste("Age:",age))
}

main = function(){
  greeting()
  greeting_v2("nut")
}

## อธิบาย parameter, argument

box = c("red","blue","green","red","red","red")
countball = function(box ,color = "red"){
  sum(box == color)
}
