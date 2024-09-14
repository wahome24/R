#Creating a data frame from vectors.

days <- c('Mon','Tue','Wed','Thur','Fri')
temps <- c(23.4,27,20.1,25,24.8)
rain <- c('11mm','9mm','12mm','5mm','13mm')


df <- data.frame(days,temps,rain)
df

#type check
class(df)

#Data Frame functions
head(df)
tail(df)
summary(df)
str(df) #structure of a data frame.

#Sorting a data frame, ASC is the default.

sorted.temp <- order(df$temps)
sorted.temp

#The result is ordered index. We have to use the ordered row index to order the data frame.

df[sorted.temp,] #returns the ordered data frame in ASC 

#DESC order - add a negative sign

sorted.temp <- order(-df$temps)
sorted.temp
df[sorted.temp,]


#temp above 24,referred to as logical selection.

high.temp <- df$temps > 24
high.temp #returns vector logicals.

df[high.temp,] #Displays the rows where the temp was above 24.

#inbuilt letter function
alphabet <- letters
alphabet

#Reading a CSV file

df.file <- read.csv("C:\\Users\\USER\\Desktop\\DATA\\Public Debt.csv")
df.file

head(mtcars)

#selecting single column
mtcars$drat
mtcars['drat']

#selecting multiple columns we utilize a vector

head(mtcars[c('drat','disp')])

#adding new rows, use rbind

#adding new columns
df$rating <- c(5,4,3,2,2) #will add a column called rating to our data frame.
df

#checking column names, you can also use it and pass a vector to change column names.
colnames(df)

#multiple conditional selection
#returns row matching the conditions

df[df$salary >= 250000 & df$rating > 3,]

#you can also pass in the columns you want returned
#Employees earning above 250k and with a rating of above 3?

df[df$salary >= 250000 & df$rating > 3,"employees"] #returns the names of employees.

#conditional selection can also be done using the subset function

subset(df,salary >= 250000 & rating > 3,)

#including column

subset(df,salary >= 250000 & rating > 3, "employees")

#Missing Data

is.na(df)



