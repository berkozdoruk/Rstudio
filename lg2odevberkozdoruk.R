id <- c(111,222,333,444,555,666,777,888,999,112,113,114,115,116,117,118,119,120,121,123,124,125,126)
name <- c("Rick","Dan","Michelle","Aaron","Frank","Abbey","Edward","Abel","Reuben","Abelson","Abrams","Ace","Jna","Mary","James","Bertie","Rachel","Ross","Monica","Chandler","Phoebe","Joseph","Janice")
salary <- c(623.0,515.2,611.0,729.0,843.0,850.0,954.0,1145.0,741.0,600.0,451.0,620.0,750.0,460.0,1621.0,1400.0,541.0,856.0,974.0,687.0,574.0,641.0,1245.0)
workingyear <- c(15,12,8,15,4,14,19,12,2,5,1,16,7,4,20,14,5,18,19,6,13,4,12)

df <- data.frame(id,name,salary,workingyear)
df

colnames(df)<-c("employee id","employee names","employee salaries","e. working years")
df



ind <- workingyear>15

ind
yenimaas <- salary[ind]*1.075

salary[ind] <- yenimaas
salary
df$yenimaas <- salary

df

colnames(df)<-c("employee id","employee names","employee salaries","e. working years","new salaries")

df


fac <- factor(df$`employee id`)
fac

getwd


paste("highest raise was made to",df$`employee id`[which.max(df$`new salaries`-df$`employee salaries`)],"with $",max(df$`new salaries`-df$`employee salaries`))


#q2



mydata <- read.delim(file.choose())


mydata


summary(mydata)

#complete.cases(mydata)

countedna <- sum(is.na(mydata))

countedna

str(mydata)
complete.cases(mydata)
x <- mydata[complete.cases(mydata), ]
str(x)
x<- na.omit(mydata)




#q3



mydata2 <- read.csv(file.choose())

mydata2$Cuneyt.Sevgi
mydata2$Burcu.Liman
mydata2$Ceren.Serim
mydata2$Nese.Sahin

#mydata2 <- data.frame(read.csv(file.choose(), header = TRUE))


#mydata2<- read.csv(file.choose(), 
#stringsAsFactor = FALSE)


#hata veriyor okuyup islem yapamiyorum


#done hocaam akiyorum
#q4

mydata3 <- read.csv(file.choose())

#listt <- list(mydata3)

mydata3$Ankara

colMax <- function(data) sapply(data, max)
colMax(mydata3)

colMin <- function(data) sapply(data, min)
colMin(mydata3)



# hocam ins quiz bu kadar zor olmaz :((((())))

#sapply(listt, FUN=max )

#sapply(listt,FUN = min)

#hatacozuldu
#q5


x <-  c(1, 2,3, 4, 5,6,7)

y <- c(25, 18, 19, 26, 19,20,25 )

plot(x,y)

plot(x,y, type="o", col="blue", lwd=2, xlab="temperatures", ylab="weeks", main="Temperature of ANKARA for one week")






