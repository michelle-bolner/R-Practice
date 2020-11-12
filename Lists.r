# Lists are container objects that can hold any amount of arbitrary objects

list1 <- list(1,2,3) # creates list where each element holds a vector of length 1
list1
list2 <- list(c(1, 2, 3)) # creates single element list with vector inside
list2

# Storing diff types
list3 <- list(c(1,2,3), 3:7) # creates two elements; one vector of 3 elements, one vector of 5 elements
list3
 
theDF <- data.frame(First=1:5, Second=5:1, Sport=c("Hockey", "Lacrosse",
                "Football", "Curling", "Tennis"), stringsAsFactors = FALSE)
theDF

list4 <- list(theDF, 1:10) # Able to hold diff elements (dataframe and vector)
list4

list5 <- list(theDF, 1:10, list3) # able to even have list as element (note how list3 prints out)
list5

names(list5) # what are row and column names?? null right now
names(list5) <- c("data.frame", "vector", "list")
names(list5)
list5 

# Give names while we create list
list6 <- list(TheDataFrame=theDF, TheVector=1:10, TheList=list3)
names(list6)
list6

# Create empty list instead of appending later to existing list
emptyList <- vector(mode="list", length = 4) #lists are a type of vector
emptyList # print out returns NULL
emptyList[[1]] <- 5
emptyList

# Access elements of a list
list5[[1]] # what is first element - should return data frame
names(list5) # remember we gave names to elements in list
list5[["data.frame"]] #grab the element you want
list5[[1]]$Sport #grab column from dataframe (remember it returns a vector)
list5[[1]][, "Second"] #same as above
list5[[1]][, "Second", drop=FALSE] #same as above, but return as dataframe

length(list5) # get length of list
NROW(list5) #same but better

# Adding elements to list
list5
list5[[4]] <- 2 #add an element to the list (NOTE not memory and process efficient)
list5[["NewElement"]] <- 3:6
length(list5)
names(list5) # see unnamed fourth element added
list5 # see how lists are great way to store diff data types
