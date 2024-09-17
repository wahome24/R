library(dplyr)
library(ggplot2)

#Loading demographic data

demo <- read.csv("C:\\Users\\USER\\Desktop\\R\\DATA\\P2-Demographic-Data.csv")

head(demo)

summary(demo)

View(demo)


select(demo, Birth.rate, Internet.users)

#Country with the highest birth rate 

filter(demo, Birth.rate == max(Birth.rate)) #Niger 

#Country with the highest internet users

filter(demo, Internet.users == max(Internet.users)) #Iceland

#Number of countries in each income group

demo %>% group_by(Income.Group ) %>% summarise(mean(Birth.rate))

#Checking for correlation between birth rate and internet users

demo.plt <- ggplot(demo, aes(x= Birth.rate, y=Internet.users ))

demo.plt + geom_point(aes(color = Income.Group), size = 3) +
  ggtitle('Birth Rate VS Internet Usage') + xlab('Birth Rate') + ylab('Internet Users')



