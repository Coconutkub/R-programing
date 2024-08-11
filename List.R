##LIST CAN KEEP VARIOUS DATATPYE

m1 = matrix(1:25,nrow=5)
x = 1
box = c("A","B","C")

LIST1 = list(item1=m1,
             item2=x,
             item3=box)
## YOU CAN CALL ITEM BY USE $
answer = LIST1$item1
class(answer)
