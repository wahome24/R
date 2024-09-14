#Arithmetic in R

5*34 #multiplication
10+10 #addition
23-7 #subtraction
50/5 #division
2^3 #exponent
5%%2 #Modulus to return division remainder

#Variable Assignment
#Can be done in two ways

#Option 1

a = 56
a

#option 2

b <- 34
b

#Style guide for variable assignments - using underscore is not ideal i.e bank_account.
#Preference should be bank.account or bankAccount.

#combining two variables in R

str.one <- 'Erastus'
str.two <- 'Wahome'

str.joined <- paste(str.one,str.two)

str.joined

#Checking for the length of characters

nchar(str.one)

#You cannot use the length function for characters

length(str.one) # returns one instead of 7.

#length comes in handy when working with data structures such as vectors & lists.

#How to check for data type

my.name <- "Erastus"
myweight <- 76
myheight <- 5.11

class(my.name)
class(myheight)
class(myweight)
typeof(myweight)

#Vectors
#Data types cannot be mixed
vc.one <- c(3,4,5,6,7)
vc.two <- c(8,9,10,11,12)

#Assigning names to a vector list
names(vc.two) <- c('Mon','Tue','Wed','Thur','Fri')
vc.two

#second method

days <- c('Mon','Tue','Wed','Thur','Fri')
names(vc.two) <- days

vc.char <- c('Hello','World','Today')

class(vc.one)

#Vector Operations - inbuilt functions
sum(vc.one)
mean(vc.one)
max(vc.one)
min(vc.one)

#Vector  & Slicing

vc.char[1:2]

vc.two['Tue']

vc.two[c('Wed','Fri')]

#string indexing
#we use the function substr ()

test <- 'wahome'

substr(test,1,1)

#Getting Help 

help("library") #Method One

??vector #Method Two

#Practice

stock.prices <- c(23,27,23,21,34)
days <- c('Mon','Tue','Wed','Thur','Fri')
names(stock.prices) <- days

stock.prices

#logical for days where stock price was more than 23.
over.23 <- stock.prices > 23
over.23

#Filtering for stock prices above 23

stock.prices[over.23]

#Max stock price
#Creating a filter of boolean values
max.price <- stock.prices == max(stock.prices)
max.price

#checking for the day with the highest stock price
stock.prices[max.price]

































