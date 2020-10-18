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
  t=0
  for(mm in 1:number){
    if(permutions_all3[mm] == n){
      print(paste(permutions_all2[mm],"=",n))
      t=t+1
    }
  }
  return(t)
}
Find_expression(50)
Find_expression(100)
#5.2
Total_solutions <- vector(length=100)
Find_solutions <- function(n){
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
  t=0
  for(mm in 1:number){
    if(permutions_all3[mm] == n){
      t=t+1
    }
  }
  return(t)
}
for(i in 1:100){
  Total_solutions[i]=Find_solutions(i)
}
which.max(Total_solutions)
Total_solutions[which.max(Total_solutions)]
which.min(Total_solutions)
Total_solutions[which.min(Total_solutions)]
plot(seq(1,100,1),Total_solutions,type="o",xlab="number",ylab="solutions")

#good work
