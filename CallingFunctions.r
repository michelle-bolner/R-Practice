# tldr functions operate differently on vectors
x <- 1:10
x
# Takes in whole vector as argument
mean(x)
sum(x)

# Takes in each element of vector
nchar(x)

# Function can have mult arguments and not all are needed
mean(x=x, trim = .1)
mean(x, .1)
mean(x, na.rm=TRUE)

# Handling missing values
x[c(2,6)] <- NA
x
mean(x) # now whole mean is NA
mean(x, na.rm = TRUE) # get rid of NAs yields a mean

