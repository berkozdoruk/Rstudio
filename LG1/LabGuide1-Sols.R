#LabGuide - 1


#Q1 -


grd1 <- scan("grd1.txt", numeric(), quote = " ")
grd2 <- scan("grd2.txt", numeric(), quote = " ")
result <- grd1 - grd2

index <- result < 0

result[index]

#Q2- 
newMatrix <- cbind(grd1,grd2,result)


#Q3 - 
myTeam <- scan("myTeam.txt", numeric(), quote = " ")
opponentTeams <- scan("opponentTeams.txt", numeric(), quote = " ")
dif <- myTeam- opponentTeams

win <- dif>0
tie <- dif==0
lose <- dif<0

countWin <-sum(win)
countTie <-sum(tie)

score <- countWin*3 +countTie

paste("Score is ",score)


