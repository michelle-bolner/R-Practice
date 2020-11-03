# Create a vector
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x

# multiply each element in vector - no need for loop
x * 3
x - 3
x / 4
sqrt(x)

# quick vector creation
1:10
10:1
-2:3
5:-7

# vector operations
x <- 1:10
y <- -5:4
x
y
x + y 
x /y 
x^y

# helper functions
length(x)
length(x+y)

x + c(1,2) # when adding with vectors of diff sizes
x + c(1,2,3) 

x <= 5 #bool
x > y
y > x
x <- 10:1
y <- -4:5
x < y # hard to interpret sooo
any(x < y)
all (x < y)

q <- c("hockey", "football", "baseball", "curling", "lax", "bball", "soccer", "tennis", "cricket")
q
nchar(q) # how many in each element of vector
f <- 7 # NOTE everything is stored in vector in R

x
x[1] # get first element
x[1:2] # get first two
x[c(1,4)] # get two nonconsecutive elements

c(one="a", two="y", last="r") # cannot use arrow assignment w/in function

#rename after the fact
w <- 1:3
w
names(w) <- c("a", "b", "c")

# add onto vector 
q
q2 <- c(q, "hockey", "lax", "hockey", "water polo", "hockey", "lax")
q2
q2Factor <- factor(q2)
q2Factor
as.numeric(q2Factor) # will print out the unique levels (labels) and orders alphabetically

# Dealing with missing data: NA (missing data) vs null (absence of anything)
z <- c(1, 2, NA, 8, 3, NA, 3)
z # NA doesnt mean invalid, just not present
is.na(z)

zChar <- c("Hockey", NA, "Lax")
is.na(zChar)
z <- c(1, NULL, 3)
z
d <- NULL
d
is.null(d)
