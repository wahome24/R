#Matrix practice 

A <- c(1,2,3)
B <- c(4,5,6)

ab.matrix <- cbind(A,B) #binds per column
  
ab.matrix

ab.matrix <- rbind(A,B) #binds per row

ab.matrix

#3 by 3 matrix using slicing method

mat <- matrix(1:9, nrow = 3)
mat

is.matrix(mat) #checking if above has a type matrix

#5 by 5 matrix

mat2 <- matrix(1:25, byrow = T, nrow = 5)
mat2

#Selecting sections of a matrix
#the first part before the comma always represent the rows and the other columns.

mat2[2:3,2:3] #selecting items in row 2&3 and in column 2&3
mat2[4:5,4:5] #selecting items in row 4&5 and in column 4&5

sum(mat2) #adding all the values in the matrix
colSums(mat2) #adding all the column values in the matrix
rowSums(mat2) #adding all the row values in the matrix


runif() #generates random numbers and can be assigned a max and min range

runif(20) #generates 20 random numbers with the default max and min range being 0 and 1

runif(20, min = 1, max = 10) #range defined.

#creating a matrix using the runif function

mat3 <- matrix(runif(20),nrow =5 )
mat3

colnames(mat3) <- c('A','B','C','D')
rownames(mat3) <- c('A','B','C','D','E')
mat3



