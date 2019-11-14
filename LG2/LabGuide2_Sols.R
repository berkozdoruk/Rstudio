


#Q1
employee_Id <- c(111, 222, 333, 444, 555, 666, 777, 888, 999, 112, 113, 114, 115,
                 116, 117, 118, 119, 120, 121, 123, 124, 125, 126)
employee_Name <- c("Rick"    , "Dan"   ,   "Michelle" ,"Aaron"  ,  "Frank" ,   "Abbey" ,   
                   "Edward"  , "Abel"  ,   "Reuben" ,  "Abelson","Abrams"  , "Ace"   ,   "Jne"    ,  
                   "Mary"   ,  "James" ,   "Bertie" ,  "Rachel" ,  "Ross" ,    "Monica" ,  "Chandler", 
                   "Phoebe",   "Joseph",   "Janice"  )
employee_Salary <- c(623.3 , 515.2 , 611.0 , 729.0 , 843.0 , 850.0 , 954.0 ,1145.0 ,
                     741.0 , 600.0 , 451.0 , 620.0 , 750.0 , 460.0 ,1621.0 ,1400.0 , 541.0  ,
                     856.0 , 974.0,  687.0 , 574.0 , 641.0 ,1245.0)
employee_workingYear <- c( 15,  14,  8,  15,  4 , 14  ,19 ,12  ,2,  5 , 1 ,16 , 7,  4,
                           20 ,14 , 5,  18,  19,  6,  13 , 4, 12)


employees <- data.frame(employee_Id,employee_Name,employee_Salary,employee_workingYear)
#a and b
#Get the index of the employees that worked more than 15 years
indexes <- match(employees[employees$employee_workingYear>15,]$employee_Salary,employees$employee_Salary)

#create new column for new salary. Also assign old salaries to new column because there will be some employees whoes salary will not change
employees$NewSalary <- employees$employee_Salary

#get the old salaries of employees who worked more than 5 year
oldSalaries <- employees[employees$employee_workingYear>15,]$employee_Salary 

#calculate the new salary by using old salaries and assign them to the indexes to be change that we found before
employees$NewSalary[indexes] <- oldSalaries*7.5/100+oldSalaries

head(employees)
str(employees)
#c
#rename the column names
names(employees) <- c("Employee Id", "Employee Name", "Employee Salary", "Employee Working Year", "New Salary")
#d
#Convert the employee id column to factor
employees$`Employee Id` <- as.factor(employees$`Employee Id`)
str(employees)

#e
raises <- employees$`New Salary` - employees$`Employee Salary`
maxRaise <- max(raises)
index <- match(maxRaise,raises)
name <- as.character(employees$`Employee Name`[index])
print(paste("The highest raise to the ",name," was made as ",maxRaise,"$" ))

#Q2
#a

mySleepData <- read.delim("mydata.txt",sep = "\t")
head(mySleepData)
#b
colSums(is.na(mySleepData))
apply(is.na(mySleepData),2,sum)
sapply(mySleepData,function(x) sum(is.na(x)))

#c
sum(colSums(is.na(mySleepData)))

#d
is.na(mySleepData)


#Q3
class_grades <- read.csv("academic.csv")

class_grades.list <- as.list(class_grades)


#Q4
temperature <- read.csv("temperature.csv")

temperature.list <- as.list(temperature)

maxTemperatures <- lapply(temperature.list, max)
minTemperatures <- lapply(temperature.list, min)


#Q5

plot(1:7, temperature$Ankara,
     type ="o",
     col="blue",
     xlab="Temperatures",
     ylab="Weeks",
     main="Temperature of Ankara for One Week")















