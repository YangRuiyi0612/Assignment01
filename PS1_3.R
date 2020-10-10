#One of the most interesting number patterns is Pascal¡¯s triangle
#(named after Blaise Pascal). Write a function Pascal_triangle with
#an argument k to print the kth line of the Pascal triangle. Report 
#Pascal_triangle(100) and Pascal_triangle(200).

Pascal_triangle <- function(n){
  a = matrix(0, nrow = n, ncol = n)
  a[, 1] = 1
  
  for (i in 1:n) {
    a[i,i]=1
  }
  
  for (i in 3:n) {
    for (j in 2:(i - 1)) {
      a[i, j] = a[i - 1, j] + a[i - 1, j - 1]
    }
  }
   sprintf('%e',a[n,])
   print(a[n,])
}
Pascal_triangle(100)
Pascal_triangle(200)

