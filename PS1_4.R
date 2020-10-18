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
        # I don`t think this method should be use, not to mention being recommending
        # self-called function is very dangerous for complex computing
        # try calculating Least_moves(666) with your code, it doesn`t work
        # there much more useful method for this condition like  "while(true)...break"
    return(step)
     }
  }
}
Least_moves(2)
Least_moves(5)
x <- sample(1:100,1)
print(x)
Least_moves(x)  
