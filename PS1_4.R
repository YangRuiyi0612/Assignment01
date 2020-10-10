#Write a function Least_moves to print your results. For example,
#Least_moves(2) should print 1, and Least_moves(5) should print 3.

Least_moves <- function(n){
    if(n == 1){
    step <- 0
    return(step)
  }
  else{
    if ((n%%2)!= 0){
    step=(1+Least_moves(n-1))
    return(step)
    }
    else{
    step=1+min(Least_moves(n-1),Least_moves(n/2))
    return(step)
     }
  }
}
Least_moves(2)
Least_moves(5)
x <- sample(1:100,1)
print(x)
Least_moves(x)  
