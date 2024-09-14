#Assigning sequential numerical data

my.val <- 1:10

my.val

#Creating a matrix

matrix(my.val)

#Specifying rows
#By default the numbers are arranged per columns

matrix(my.val, nrow = 2)

matrix(my.val, nrow = 5)

#Adding byrow to true will ensure row arrangement

matrix(my.val, byrow = T, nrow = 5)

#Creating matrix from vectors

gool <- c(234,269,211,300,287)
appl <- c(123,145,134,120,139)

stocks <- c(gool,appl)
stocks

#Version 1 of creating matrix for stock prices
stocks.matrix <- matrix(stocks,nrow = 5)
stocks.matrix


#Version 2 of creating matrix for stock prices
stocks.matrix <- matrix(stocks,byrow = T, nrow = 2)
stocks.matrix

#Naming the cols and rows

stocks.matrix <- matrix(stocks,nrow = 5)
colnames(stocks.matrix) <- c("GOOL","APPL")
rownames(stocks.matrix) <- c("Mon","Tue","Wed","Thur","Fri")
stocks.matrix

#Matrix Arithmetic

d <- c(1:10)
d

d.matrix <- matrix(d,2)
d.matrix

d.matrix * 2
d.matrix ^ 3

d.matrix + d.matrix


#Matrix selection and indexing

d.matrix
d.matrix [1,] #selecting first row
d.matrix[,1] #selecting first column


d.matrix[1:2,] #selecting first two rows

