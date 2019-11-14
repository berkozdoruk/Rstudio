#creating a matrix matrix()
#matrix(vector,row,column,False,list)
m <- c(1:10)
rowname <- c("first","second")
columnname <- c("a","b","c","d","e") 
myfirstmatrix <- matrix(m)
myfirstmatrix
myfirstmatrix <- matrix(m,2,5,F)
myfirstmatrix
myfirstmatrix <- matrix(m,2,5,T)
myfirstmatrix
myfirstmatrix <- matrix(m,2,5,F,list(rowname,columnname))
myfirstmatrix


#creating a matrix with cbind() and rbind()
a <- c(1:4)
b<-c(2:5)
c<-c(6:9)

m1 <- rbind(a,b,c)
m2 <- cbind(a,b,c)

#row and column sums
rowSums(m1)
colSums(m1)

rowSums(m2)
colSums(m2)
