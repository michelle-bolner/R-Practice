# Data Frames

# @def: rectangular data structure sim to a spreadsheet that allows the storage
#       in columns of different types of data
# Allow easy access to individ cells or columns in data frame

x <- 10:1
y <- -4:5
q <- c("Hockey", "Footbal", "Baseball", "Curling", "Rugby", "Lacross", "Basketball", "Tennis", "Cricket", "Soccer")
theDF <- data.frame(x,y,q)
theDF # spits out a nice table where variable is the column name

# Recreate using explicit names for columns
theDF <- data.frame(First=x, Second=y, Sport=q) #giving columns nice names
theDF

# Check the type of a column
class(theDF$Sport) #Note that it comes out as a factor


# Cast it to a string as factor -- do not convert the characters as factors
theDF <- data.frame(First=x, Second=y, Sport=q, stringsAsFactors=FALSE)
theDF
class(theDF$Sport)

# How many rows in dataframe
nrow(theDF)
# How many columns in dataframe
ncol(theDF)
# dimension
dim(theDF)

#Note -- use uppercase NROW for more flexiblity
NROW(theDF) # data frame -- yields 10
nrow(x) # vector -- yields NULL bc vectors dont have rows, but elements
length(x) # gives you elements in vector, ie length
NROW(x) # also gives # of elements -- yields 10

# Getting column names 
names(theDF) # yields column names
names(theDF) [3] # just gives third column name

# Getting row names
rownames(theDF) # yields generic default 1 - 10
rownames(theDF) <- c("One", "Two", "Three", "Four", "Five", 
                      "Six", "Seven", "Eight", "Nine", "Ten") # assign values to row names
rownames(theDF)
theDF # Now have nice column and row names
rownames(theDF) <- NULL # to turn back to default
theDF # check dataframe

# Note optimal to print out whole data frame as data gets larger
head(theDF) # just prints out first six rows by default
head(theDF, n=7)
tail(theDF) # bottom 6
class(theDF)

# Access individ column from data frame -- build vector for mult rows, ":" for mult columns
theDF$Sport # grab full column
theDF[3, 2] # grab third row, second column cell
theDF[3, 2:3] # grab third row, second thru third column cells
theDF[c(3, 5), 2] # grab third and fifth row and second column
theDF[c(3,5), 2:3] # grab third & fifth row and second & third column
theDF[,3] # just to get a column, no row ##NOTE returns vector
theDF[,2:3] # just two columns ##NOTE returns dataframe

class(theDF[, 3]) # returns character
theDF[ , 3, drop=FALSE] # dont let it turn into a vector, now a data frame
class(theDF[ , 3, drop=FALSE]) # check its a dataframe

theDF[2, ] # select entire single row -- returns a dataframe
class(theDF[2, ]) # MUST be a data frame bc diff elements may be of different 
                  #     types and a vector can only hold elements of certain type
theDF[2:4, ]

# select variation of rows and columns
theDF[ , c("First", "Sport")] # can specify by name
theDF[ , c("Sport", "First")] # can rearrange how they are laid out
theDF[ , "Sport"] # will make into a vector
theDF[ , "Sport", drop=FALSE] # will NOT make into a vector, but data frame
theDF["Sport"] # grab a single column as dataframe
theDF[["Sport"]] # returns as a vector
theDF[c("Sport", "First")] # grab several columns
