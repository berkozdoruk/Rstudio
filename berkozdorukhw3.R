
#Q1

#a 
grades <-read.csv(file.choose(),header = TRUE)
grades
grades <- grades[-1]
grades

tail(grades)


#frequency distribution table


lettergrades <- grades$letterGrade
lettergrades
lettergrades_freq<- table(lettergrades)
lettergrades_freq

#b
nrow(grades)
grade_freq <- table(grades$grade)

grades_relfreq<- grade_freq/nrow(grades)
prop.table(table(grades$grade))


#c


#final exam grades

final_freq<- table(grades$final)
final_freq
hist(final_freq,breaks = 5)

#kesin sinavda kalcam
#d
grades$grade
hist(grades$grade*25,breaks=seq(15, 95,5), main = "Grades")
grades
stem(grades$grade*25)

#e
grades
barplot(lettergrades_freq)




#Q2
rs <- c(1,3,5,1,5,4,9,2,5,8,3,6,7,8,2,1)

range(rs)

q2numVal<- sum(table(rs))
q2sqare<- seq(9)*seq(9)


q2mean<- mean(rs)
q2freq<- table(rs)


ratingDataFrame<- cbind(`X`=seq(9), `FREQ`=q2freq, `X^2`=q2sqare, `MEAN`=q2mean, `X-MEAN`=seq(9)-q2mean,
                        `(X-MEAN)^2`=(seq(9)-q2mean)*(seq(9)-q2mean))

ratingDataFrame


#Q3

q3txt <-read.delim(file.choose(),  header = TRUE)
q3txt
q3mean <- round(mean(q3txt$x),digits = 2)
q3median <- round(median(q3txt$x),digits = 2)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

q3mode <- getmode(q3txt$x)

hist(q3txt$x, xlim =range(14,24), breaks = 45,
     main = "Central tendancy",
     col= "orange",
     probability = TRUE,
     xlab = "X",
     ylab = "prob",
     border = "white"
     )
lines(density(q3txt$x),lwd = 3,col = "black", lty = 2) 

abline(v=q3mean,lwd=3,lty=4,col="blue")

text(x=15,y=0.22,paste("Mean = ",q3mean),col = "red")  
text(x=15,y=0.2,paste("Media = ",q3median),col = "red")  
text(x=15,y=0.18,paste("Mode = ",q3mode),col = "red")  

legend(21.5, 0.4, legend=c("Density", "Mean"),col=c("black", "blue"), lty=c(2,4),lwd = 3)




