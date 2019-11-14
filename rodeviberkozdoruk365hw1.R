
#berkozdoruk 
new_hope <- c(460.998,314.4)
empire_strikes <- c(290.475,247.900)
return_jedi <- c(309.306,165.8)

#vectorleri aldik

#starwarsmatrix <- matrix(c(new_hope,empire_strikes,return_jedi),3,2,T)
#calismadi bu xd
starwarsmatrix <- rbind(new_hope,empire_strikes,return_jedi)
#matrix yarattik
starwarsmatrix

rownames(starwarsmatrix) <- c("a new hope","the empire strikes back","return of the jedi")
colnames(starwarsmatrix) <- c("us","non-us")
starwarsmatrix
#columnlara ve rowlara isim atadik
vectorworld <- c(rowSums(starwarsmatrix))

#vector yaptik  Calculate the worldwide box office (US + non-US) figures for the three movies and put them in a vector
#called worldwide_vector.

vectorworld
starwarsmatrix_ext <- cbind(starwarsmatrix,c(vectorworld))

# Add worldwide_vector as a new column at the end of the star_wars_matrix matrix and assign the result
#to star_wars_ext.

starwarsmatrix
rownames(starwarsmatrix_ext) <- c("a new hope","the empire strikes back","return of the jedi")
colnames(starwarsmatrix_ext) <- c("us","non-us","worldwide vector")
starwarsmatrix_ext

##e sikki
phantom <- c(474.500,552.5)
attackclones <- c(310.700,338.7)
revenge <- c(380.300,468.5)



starwarsmatrix2 <- rbind(phantom,attackclones,revenge)

starwarsmatrix2
starwarsmatrix

allwarsmatrix <- rbind(starwarsmatrix,starwarsmatrix2)
rownames(allwarsmatrix) <- c("a new hope","the empire strikes back","return of the jedi","The phantom Menace","Attack of clones","Revenge of the Sith")
allwarsmatrix
#f sikki toplam bulduk
totalrevenue <- c(colSums(allwarsmatrix))

totalrevenue




#q2

kilolar <- scan()
kilolar
boylar <- scan()
boylar
#use 2kez enter atana kadar input alma
dframe <- data.frame(kilolar,boylar)
dframe
#bmi formulu
dframe$bmi <- with(dframe,kilolar/(boylar*boylar))
dframe <- round(dframe,3) 
#3 hanede gostermek yuvarlamak icin
dframe

combined <- subset(dframe,(dframe$bmi>17)&(dframe$bmi<22))
#Find the athletes whose BMI is between 17 and 22
combined


