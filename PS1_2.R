#Make two matrices M1 (5 rows and 10 columns ) and M2 (10 rows and 5 columns );
#both are filled with random integers from 0 and 50.
#Write a function Matrix_multip to do matrix multiplication, i.e., M1 * M2. 
#Here you are only allowed to use for loop, * operator, and + operator. 
#Verify your result with the built-in %*% operator.
 
M1 <- matrix(sample(0:50,50),nrow=5,ncol=10,byrow=T)

M2 <- matrix(sample(0:50,50),nrow=10,ncol=5,byrow=T)

M3 <- matrix(0,5,5)

Matrix_multip <- function (M1,M2) {
  for(k in 1:5){
    for(j in 1:5){
      for(i in 1:10){
        M3[k,j]=M1[k,i]*M2[i,j]+M3[k,j]
      }
    }
  }
 print(M3) 
 M4 <- M1 %*% M2
 print(M4)
}

Matrix_multip(M1,M2)

