#seq(from,to,by) default

a <- seq(5,20,5)
a

#seq(from,to,length.out)  //desired length of the sequence
a <- seq(5,20,length.out = 40)
a

#seq(from,to,along.with)  //take the length from the length of this argument.
x <- c("a","b","c")
a <- seq(5,20,along.with = x)
a

#rep(variable,times)
b <- rep(5,times = 10)
b

#rep(vector,each)
rep(4:8,each=2)

#check the type
is.numeric(a)
is.character(b)

typeof(x)

n <- 4
sqrt(n)

greeting1 <- "Hello"
greeting2 <- "World"

greetings <- paste(greeting1,greeting2)


#Parsing  (Coersion)
n
typeof(n)
n <- as.character(n)
typeof(n)


#mean
mean(a)







