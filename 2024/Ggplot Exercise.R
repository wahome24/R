#Importing dataset and libraries

library(dplyr)
library(ggplot2)
df <- mpg

head(df)

#Histogram of hwy mpg values
plt <- ggplot(df, aes(x=hwy))

plt + geom_histogram(color = 'red', fill = 'blue')
  
#Barplot of car counts per manufacturer with color fill defined by cyl count
plt1 <- ggplot(df, aes(x = manufacturer))

plt1 + geom_bar(aes(fill = factor(cyl)))

#Switching now to the txhousing dataset that comes with ggplot2

head(txhousing)

#Creating a scatter plot of volume versus sales. 

plt2 <- ggplot(txhousing, aes(x = sales, y = volume))

plt2 + geom_point(color = 'blue', alpha = 0.3 ) + geom_smooth(color = 'red')
  



