#### CSV (comma separated values file)
"http://www.jaredlander.com/data/Tomato%20First.csv"

## if saved on computer 
# header = column names, separated by commas
# would use sep='\t' for tabes, or sep=";" for semicolons
#tomato <- read.table(file="location/of/file", header=TRUE, sep=",")

#if direct link
tomato <- read.table(file="http://www.jaredlander.com/data/Tomato%20First.csv", header=TRUE, sep=",")
head(tomato) # show me the first 6 rows

# For big data sets, read.table() automatically turns character data into factors
class(tomato$Tomato) #lol jk this version turns into character
# speed up computation by doing
tomato <- read.table(file="http://www.jaredlander.com/data/Tomato%20First.csv", header=TRUE, sep=",", stringsAsFactors = FALSE)
class(tomato$Tomato) # still character. whatever

# When csv not formatted correctly (ie using periods instead of ",", may trick read.table() into thinking data set it bigger)
