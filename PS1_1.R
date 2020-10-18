#Write a function Print_values with arguments a, b, and c to reflect the following flowchart 1.
#Here the red-ish parallelogram operator is to print values in the given order. 
#Report your output with some random a, b, and c values.

Print_value <- function(a,b,c){
  if(a>b){
    if(b>c){
      print(paste(a,b,c))
      } 
    else {
        if(a>c) {
      print(paste(a,c,b))
          }
    else {
      print(paste(c,a,b))
          }
    }
  }
  else {
    if(b>c) {
        print(paste(c,a,b))
    }
    else {
        print(paste(c,b,a))
      }
    }  
}
# annotation 
# use "?paste" in console to master the usage of this function
# "paste" will turn the result into character
# use "c()" being more appropriate, or you should turn the output result into what you just input
random_values <- c(rnorm(3,mean=0,sd=4))
a <- random_values[1]
b <- random_values[2]
c <- random_values[3]
Print_value(a,b,c)
