#lists
list("Rsome times",193,23)
song <- list("Rsome times",193,23)
is.list(song)

#converting list to a vector
unlist(song)


#add name
names(song) <- c("title","duration","track")

song2 <- list(title="Rsome times",duration="193",track="23")

is.list(song["title"])
typeof(song[["title"]])

# [  vs. [[
song[1]

song[[1]]

song[c(1, 3)]

song[[c(1, 3)]]

song[[1]][[3]]

song[[4]][[1]]

song[[c(4, 1)]]

#list in list
songs <- list(track1=song,track2=song2)


# $ and extending
song$duration

friends <- c("Kurt", "Florence", "Patti", "Dave")
song$sent <- friends


# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("Months", "A_Matrix", "A list")

# Access the first element of the list.
print(list_data[1])

# Access the thrid element. As it is also a list, all its elements will be printed.
print(list_data[3])

# Access the thrid element. As it is also a list,get its second element.
print(list_data[[3]][[2]])

# Access the list element using the name of the element.
print(list_data$A_Matrix)

# Add element at the end of the list
list_data[4] <- "new varibale"
# Add element at the end of the list in the list.
list_data[[3]][[3]] <- "New element"

# Access the thrid element.
print(list_data)




