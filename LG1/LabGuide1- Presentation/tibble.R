
#Creating a tibbble from an existing dataframe with as_tibble
library(tibble)

newDataFrame <- iris

newTibble <- as_tibble(newDataFrame)

#Creating a new tibble from column vectors with tibble(): 
  
tibble(x = 1:5, y = 1, z = x ^ 2 + y)