
#Q1-----------
head(faithful)
duration <- faithful$eruptions

min <- min(faithful$eruptions)
max <- max(faithful$eruptions)

breaks <- seq(1.5, 5.5, by=0.5) 
library()
duration.cut <- cut(duration, breaks, right=FALSE)
duration.freq <- table(duration.cut)

duration.freq.max <- max(duration.freq)

paste("Maximum of the intervals' frequency is ",duration.freq.max)



#Q2------------------------
getwd()
temp <- read.delim("ctiesTemperature.txt",header = TRUE,sep = " ")
tmp.freq <- count(temp$temperature)
length.data <- sum(tmp.freq$freq)

#cumulative frequency
cum.freq <- round(cumsum(tmp.freq$freq),2)

#propertion
prop <- round(tmp.freq$freq / length.data,2)

#propertion percentage
prop.per <- round( prop * 100,2)

#cumulative proportion
cum.prop <- round(cumsum(prop),2)

#cumulative proportion percentage
cum.prop.perc <- round(cum.prop * 100,2)

#combine all variables in to one table
temp.freq.table <- cbind(tmp.freq,cum.freq,prop,prop.per,cum.prop,cum.prop.perc)

head(temp.freq.table)

#Q3------------------------
percentile_Rank <-  function(data.frq,x){
        n <- sum(data.frq$freq) 
        index <- match(x,data.frq$x)
        100 * data.frq[index,"cf"] / n
}

#add cum. freq to the freq dist table assign to an other table 
tmp.freq.cf <- cbind(tmp.freq,cf=cumsum(tmp.freq$freq))
percentile_Rank(tmp.freq.cf,39.4) 
percentile_Rank(tmp.freq.cf,40.6) 

#percentile
#find the value in the 20th and 38th percentile
quantile(temp$temperature, c(.20,.38), type = 5)

#Q4-------
stem(temp$temperature)

#Q5----
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution",
        xlab="Number of Gears")

#Q6-----
data()
hist(ChickWeight$weight, 
     main="Histogram for Chick Weights", 
     xlab="Chick Weight", 
     border="blue", 
     col="green",
     xlim=c(0,500),
     las=1)
