#Data Manipulation
#Dplyr - Useful for manipulating data.
#Tidyr - Cleaning Data

library(dplyr)

#Filtering using dplyr

filter(iris, Sepal.Length > 5.0, Petal.Length > 1.5)

#difference with subset is that you do not have to include logicals such as AND/OR you just separate your conditions using commas.

#Slicing using dplyr - allows for selection of required rows. The slice can be used to create an independent df.

slice(iris, 100:110)

#arrange using dply - orders data based on columns provided. More than one column can be provided.

arrange(iris,Sepal.Length) #Orders in ascending

#Ordering in descending

arrange(iris,desc(Sepal.Length))

#selecting using dply - returns the selected columns and observations under those columns

head(select(iris,Sepal.Length,Petal.Length))

#instead of below

head(iris[c('Sepal.Length','Petal.Length')])

#renaming columns using dply

rename(data,'new col name'='old colname')

#Distinct using dply - returns unique values for the provided column

distinct(select(iris,Sepal.Length))

#Mutate using dply - creates a new column based on function of other columns.

head(mutate(iris, new.col = Sepal.Length + Sepal.Width))

#Summarise using dply 

summarise(iris,Species,sum(Sepal.Length))

head(iris)

distinct(select(iris,Species))