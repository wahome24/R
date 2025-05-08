library(ggplot2)
library(dplyr)

#BOD Plotting

ggplot(BOD, aes(Time,demand)) + 
     geom_point(size=3,colour='green') + 
     geom_line(colour='black') +
     ylab('Demand') +
     ggtitle('Time vs Demand') +
     theme_dark()
                                   
#CO2 Plotting

result <- CO2 %>% group_by(Type) %>% summarise('Total' = sum(uptake))
result

result <- data.frame(result)
result

ggplot(result, aes(Type, Total)) + geom_col(width = 0.5, colour='red',fill='blue') +
  ylab('Total CO2 uptake') + theme_light()

#Introducing filter
CO2 %>% filter(conc<750) %>%
    ggplot(aes(uptake,conc)) + geom_point(aes(colour = Type)) 

#mpg plotting

mpg %>% ggplot(aes(displ,hwy)) + geom_point(aes(colour = factor(cyl))) + facet_wrap(~year) 

#It can be implied that the lower the engine power the lower the fuel consumption.








