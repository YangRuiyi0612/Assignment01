#Write a function Find_expression, which should be able to print every possible 
#solution that makes the expression evaluate to a random integer from 1 to 100. 
#For example, Find_expression(50) should print lines include:
#5.1

Find_expression <- function(n){
  library(gtools)
  Insert             <-   c("+","-","")
  permutions_all     <-   permutations(3,8,Insert,repeats.allowed=TRUE)
  permutions_all2    <-   c()
  number             <-   length(permutions_all)/8        
  for(i in 1:number){
    permutions_all2[i]  <-   1
  }
  permutions_all3    <-   c()
 
  for(j in 1:number){
    for(k in 1:8){
      if(permutions_all[j,k]!=""){
        permutions_all2[j] = paste0(permutions_all2[j],permutions_all[j,k],k+1)
      }
      else{
        permutions_all2[j] = paste0(permutions_all2[j],k+1)
      }
    }
  }
  for(m in 1:number) {
    permutions_all3[m] = eval(parse(text=permutions_all2[m]))
  }
  for(mm in 1:number){
    if(permutions_all3[mm] == n){
      print(paste(permutions_all2[mm],"=",n))
    }
  }
#5.2
integer <- rep(1:100,1)
Total_solutions  <-  c()
for (i in 1:100){
  for(j in 1:number){
    if(permutions_all3[j] == i){
      Total_solutions[i] = Total_solutions[i] + 1
     }
   }
  }
plot(1:100,Total_solutions,lwd=1,type="l",col="blue")
}
Find_expression(50)
