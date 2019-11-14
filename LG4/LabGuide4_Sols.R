#Functions that will be used for the below questions
findMode <- function(x){ 
  ta <- table(x)
  tam <- max(ta)
  if (all(ta == tam))
    mod <- NA
  else
    if(is.numeric(x))
      mod <- as.numeric(names(ta)[ta == tam])
  else
    mod <- names(ta)[ta == tam]
  return(mod)
}

definationalSS <- function(x){
  mean <-mean(x)
  return (sum((x-mean)^2))
}

computationalSS <- function(x){
  return (sum(x^2) - ((sum(x)^2)/length(x)))
}

z.scores <- function(df, dd = 2) {
  # here, df is a dataframe with two columns x and freq
  # dd is number of decimal digits
  N <- sum(df$freq)
  #mean -- mu
  mu <- sum(df$x * df$freq)/N
  # computational formula for SS for unieq numbers multiply with frequency
  #so could not use the computational function is not used
  SS <- sum(df$x^2 * df$freq) - ( (sum(df$x * df$freq))^2 )/N
  std <- sqrt(SS/N)
  df$Z <- round((df$x - mu)/std, digits = dd)
  #will return the df again with new column for z score
  return(df)
}
z.scoresWithSdMean <- function(df, dd = 2, mean, sd) {
  # here, df is a dataframe with two columns x and freq
  # dd is number of decimal digits
 
  df$Z <- round((df$x - mu)/std, digits = dd)
  #will return the df again with new column for z score
  return(df)
}
z.scoresIQ <- function(data, dd = 2) {
  # here, data includes raw data 
  # dd is number of decimal digits
  N <- sum(count(data)$freq)
  #mean -- mu
  mu <- sum(data)/N
  
  SS <- sum(data^2) - (sum(data)^2 )/N
  std <- sqrt(SS/N)
  Z <- round((data - mu)/std, digits = dd)
  
  #will return the Z score
  return(Z)
}

findIQ.scores <- function(data)
{
  #data is zscores of all test result
  
  IQ.scores <- 100 + (data * 15)
  return (IQ.scores)
}

#zscore function for sample
zScoresPopulation <- function(df, dd = 2) {
  # here, df is a dataframe with two columns x and freq
  # dd is number of decimal digits
  n <- sum(df$freq)
  #mean -- mu
  mu <- sum(df$x * df$freq)/n
  # computational formula for SS for unieq numbers multiply with frequency
  #so could not use the computational function is not used
  SS <- sum(df$x^2 * df$freq) - ((sum(df$x * df$freq))^2 )/n
  std <- sqrt(SS/(n-1))
  df$Z <- round((df$x - mu)/std, digits = 2)
  
  #will return the df again with new column for z score
  return(df)
}
# Function to find the raw data FROM Z-Scores
raw.data <- function(Z, dd = 1, mu, std) {
  # Using XX as the column name for the X data obtained via z-score
  Z <-  data.frame("X"=sort(round(mu + Z * std,  digits = dd)),Z)
  
  #will return a data frame which will include both z and x values as 2 column
  return(Z)
}

#Q1
#a
offensiveDrives <- c(43, 42, 45, 44, 45, 48)

mean(offensiveDrives)

#b
mean(offensiveDrives + 12)

#c
mean(offensiveDrives - 9)

#d
offensiveDrives <- offensiveDrives[c(-5,-6)]

mean(offensiveDrives)

#e
offensiveDrives <- append(offensiveDrives, c(26,23,24))
mean(offensiveDrives)

#f
offensiveDrives <- append(offensiveDrives,mean(offensiveDrives))
mean(offensiveDrives)

#Q2

temperatures  <- c(26, 23, 24, 29, 31, 28, 32, 21, 32, 29, 25, 33, 27, 34)

scale(temperatures)
mean(temperatures)
mode(temperatures)
median(temperatures)
#Q3
input <-( "Year Time 
          1928 43.4
          1964 40.1
          1932 43.4 
          1968 40.3
          1936 43.4 
          1972 39.44
          1948 43.1 
          1976 39.17
          1952 43.2 
          1980 38.03
          1956 40.2
          1984 38.19
          1960 40.2 
          1988 36.45")


Data <- read.table(textConnection(input),header=TRUE)

unique(Data)
h <- hist(Data$Time)

mean <- mean(Data$Time)
mean
median <- median(Data$Time)
median

mode <- findMode(Data$Time)
setwd("E:/365/Lab Guide 4-R")
#Q4
library(plyr)
dataSet <- read.delim("q4data.txt",header = FALSE) #population
min <- min(dataSet)
max <- max(dataSet)
N <- sum(count(dataSet)$freq)# length of dataSet
breaks <- seq(0,10,by=1)
#a
hist(dataSet$V1,xlim=c(0,10),
     ylim=c(0,4),las=2,
     breaks = breaks,col="purple",
     xlab="data")
#Draw a density plot 
hist(dataSet$V1,probability = T, xlim=c(0,10),
     ylim=c(0,1),las=2,
     breaks = breaks,col="purple",
     xlab="data")
#draw a density line over the histogram plot
lines(density(dataSet$V1),              
      lwd = 2,               
      col = "black",        
      lty = 2) 
#b
mean <- mean(dataSet$V1)

#c
sdComputational <-sqrt(computationalSS(dataSet$V1)/N)
sdDefinational <-sqrt(definationalSS(dataSet$V1)/N)
sd <- sd(dataSet$V1) *(N-1)/N

varianceComputational <- computationalSS(dataSet$V1) / N
varianceDefinational <- definationalSS(dataSet$V1) / N
variance <- var(dataSet$V1) * sqrt((N-1)/N)

abline(v=mean,lwd=3,col="red")
text(x=mean,y=2.5,paste("mean = ",round(mean,2)))
abline(v=mean-sd,lwd=3,col="orange")
text(x=mean-sd,y=3,paste("mean-sd = ",round(mean-sd,2)))
abline(v=mean-sd,lwd=3,col="blue")
text(x=mean+sd,y=3,paste("mean+sd = ",round(mean+sd,2)))

#d
dataSet$V2 <- dataSet$V1 + 2
mean <- mean(dataSet$V2)
sd <- sd(dataSet$V2)
variance <- var(dataSet$V2)

#Q5
x_Values <- c(75,48,84,51,78,54,45,85,74,59)
#a
z.scores <- function(df, dd = 2) {
  # here, df is a dataframe with two columns x and freq
  # dd is number of decimal digits
  N <- sum(df$freq)
  #mean -- mu
  mu <- sum(df$x * df$freq)/N
  # computational formula for SS for unieq numbers multiply with frequency
  #so could not use the computational function is not used
  SS <- sum(df$x^2 * df$freq) - ( (sum(df$x * df$freq))^2 )/N
  std <- sqrt(SS/N)
  df$Z <- round((df$x - mu)/std, digits = dd)
  #will return the df again with new column for z score
  return(df)
}
x_Values_count <-count(x_Values)
zSocres_values<- z.scores(x_Values_count,2)
#b
z_Values <- c(1.00,  0.25, 1.50, -0.50 , -1.25, -2.50)

raw.data(z_Values,dd=1,65.3,15.4)

#c
x_Values_count <-count(x_Values)
zSocres_Sample_Values<- zScoresPopulation(x_Values_count,2)

#Q6
raw.test.data <- c(98,89,107.5,110,115,114,105,109,99,89,110.5,100.8)

head(raw.test.data)
zscoresIQ <- z.scoresIQ(raw.test.data)

IQ.Scores <- findIQ.scores(zscoresIQ)

result <- data.frame("test"=raw.test.data,"Zscores"=zscores, "IQ"=IQ.Scores)

head(result)

#Q7
happiness <- read.csv("happiness.csv",header=TRUE)
head(happiness)

#a
bigCityIndex <- match(c("Ankara","Istanbul","Izmir"),happiness$City)
bigCities <- happiness[bigCityIndex,-1]
barplot(as.matrix(bigCities),col=bigCityIndex,xlab = "Gender", 
        ylab = "Happines Level",beside = T, main = "2013 Happiness Level")
legend("topleft",legend=happiness[bigCityIndex,1],
       fill=bigCityIndex)
#b
maleMean <- mean(happiness$Male)
maleMedian <- median(happiness$Male)
maleMode <- Mode(happiness$Male)

femaleMean <- mean(happiness$Female)
femaleMedian <- median(happiness$Female)
femaleMode <- Mode(happiness$Female)
