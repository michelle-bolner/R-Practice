# Checking for data type
x <- 2
x
class(x) #OR
is.numeric(x)

# Numeric data is diff than integers. An integer is a subset of a numeric

i <- 5L #L indicates int
i
class(i)
is.integer(i)
is.numeric(i)

class(4L) # integer
4L * 2.8 # promoted both to decimal

5L/2L # converted to dec
class(5L/2L)

s <- "data"
s
class(s) #data type character

# Factor
y <- factor("data")
y

# Helper function
nchar(s) # how many characters
nchar("hello")
nchar(3) # converts int to a char
nchar(452)
nchar(y) # errors out

# Dates and times
date1 <- as.Date("2012-06-28")
date1
class(date1) # returns as date type
as.numeric(date1) # returns number of days since Unix epoch
date2 <- as.POSIXct("2012-06-28 17:42") 
class(date2)
as.numeric(date2)

# Booleans
TRUE # AKA 1
FALSE #AKA 0

TRUE * 5 # same as 1*5

FALSE * 5 # same as 0 * 5

k <- TRUE # store as variable
class(k) # logical
is.logical(k) # how you check for bool
T # T always begins as TRUE, F as FALSE but can be reassigned

2 == 3 # check for equality
2 != 3 # check for inequality
 2 < 3
2 <= 3 
2 > 3

"data" == "stats"
"data" < "stats" # counts string


