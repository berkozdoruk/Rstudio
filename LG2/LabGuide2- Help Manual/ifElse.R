# if statement
#create a random numer to variable x and
#check if x is greater than 1 or not
x <- rnorm(1)

if(x>1){
  answer <- "Greater than 1"
  answer
}


#if -else statement
#same code,if it not greater than one
# show appropriate msg
if(x>1){
  answer <- "Greater than 1"
  answer
}else{
  answer <- "NOT Greater than 1"
  answer
}
  
#if-elseif statement
if(x>1){
  answer <- "Greater than 1"
  answer
}else if(x == 0){
  answer <- "it is 0"
  answer
}else{
  answer <- "NOT Greater than 1"
  answer
}

#ifelse statement

ifelse(x>0,"Greater than 0","Not Greater than 0")

#OR

ifelse(x>0,"Greater than 0",
       elseif(x<0,"Not greater than 0","Equal to 0"))


