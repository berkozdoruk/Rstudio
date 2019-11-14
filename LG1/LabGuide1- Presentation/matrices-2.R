#Naming Dimensions

a <- 1:5
names(a) <- c("a","b","c","d","e")

names(a) <- NULL   #clear the name of vector a
temp.Vect <- rep(c("a","b","c"),3)
temp.Matr <- matrix(temp.Vect,3,3)

rownames(temp.Matr) <- c("How","are","you?")
colnames(temp.Matr) <- c("x","y","z")

temp.Matr

temp.Matr[2,1] #or temp.Matr["are","x"]


