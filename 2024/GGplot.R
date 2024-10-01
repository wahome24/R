#GGPLOT2

library(ggplot2)

#Layering
pl <- ggplot(data = mtcars, aes(x=mpg,y=hp)) + geom_point() + facet_grid(cyl~.) +
      stat_smooth()
pl

#DataSet for visualization
install.packages('ggplot2movies')
library(ggplot2movies)

#Histogram - while working with one aes variable

ggplot(movies, aes(x=rating)) + geom_histogram(binwidth = 0.1,fill = 'blue', color = 'red') +
  xlab('Movie Rating') + ylab('Total Count') + ggtitle('Movies')

#Adding fill based on count/value of data

ggplot(movies, aes(x=rating)) + geom_histogram(binwidth = 0.1, aes(fill = after_stat(count))) +
  xlab('Movie Rating') + ylab('Total Count') + ggtitle('Movies')


#scatterplot using the mtcars dataset
#Corelation between two variables.

#Size and color based on default value
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(size = 3, color = 'blue')

#Size based on other feature of the data set
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(size=hp))

#Color based on other feature of the data set
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(colour=hp),size = 3) + 
  scale_color_gradient(low = 'blue', high = 'red')


#using shape on features with categorical data type and not continous

ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(shape = factor(cyl), color = factor(cyl) ),size = 3)






=

