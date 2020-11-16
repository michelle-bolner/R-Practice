###### Matrix must be of same type -- often numerics

A <- matrix(1:10, nrow=5)
A
B <- matrix(21:30, nrow=5)
C <- matrix(21:40, nrow=2)
B
C

###### Check # of rows/columns in matrix
nrow(A)
ncol(A)
dim(A)
dim(C)

###### Operations you can perform
A
B
A + B # Adding matching row/column combo

A*B # Mult matching row/column combo

# NOTE all element by element operations require matrices of same dimensions

A == B # check for equality of elements

##### Dot Product
# need # columns on first to equal # rows on right matrix
ncol(A) # returns 2
nrow(B) # returns 5
#not good for dot product, so take transpose of B
t(B) # flips matrix to make 2 x 5 matrix

A %*% t(B) # yields dot product ( number of rows on left and num columns on right)
A %*% C # A (5x2) with C (2x10) --> 5x10 matrix (inner have to match, left with outer)

#### Name columns and rows
colnames(A) # null bc not assigned
rownames(A) #^^
colnames(A) <- c("Left", "Right")
rownames(A) <- c("1st", "2nd", "3rd", "4th", "5th")

colnames(A)
rownames(A)
A

colnames(B) <- c("First", "Second")
rownames(B) <- c("One", "Two", "Three", "Four", "Five")
B

LETTERS #prints out alphabet
letters

colnames(C) <- LETTERS[1:10] # use letters to make it easy to name columns
rownames(C) <- c("Top", "Bottom")
C

A # watch how naming flips when you take the transpose of A
t(A)

dim(C)
C

## NOTE naming with dot product
A %*% C ## A 5x2, C 2x10 ---> outer names stick

