
#   ____________________________________________________________________________
#   R for Datascience                                                      ####

  #load libraries
library(nycflights13)
library(tidyverse)

##  ............................................................................
##  Diamond examples                                                        ####
smaller <- diamonds %>% 
  filter(carat < 3)

  #histogram
ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.1)

  #freqpoly
ggplot(data = smaller, mapping = aes(x = carat, color = cut)) +
  geom_freqpoly(binwidth = 0.1)


  #using coord_cartesian() to see outliers
ggplot(diamonds) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))

  #filter outliers
unusual <- diamonds %>% 
  filter(y < 3 | y > 20) %>% 
  arrange(y)

  #drop strange values by filtering them out
diamonds2 <- diamonds %>% 
  filter(between(y, 3,20))

  #replace missing values with missing values
diamonds2 <- diamonds %>% 
  mutate(y = ifelse(y < 3 | y > 20, NA, y))

##  ............................................................................
##  Old Faithful Examples                                                   ####

  #histogram 
ggplot(data = faithful, mapping = aes(x = eruptions)) +
  geom_histogram(binwidth = 0.25)



### . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ..
### Exercises                                                               ####

  #page 90


  #explore distribution of x,y,z
ggplot(data = diamonds, mapping = aes(x = z)) +
  geom_histogram() +
  coord_cartesian(xlim = c(0,5))

  #explore distribution of price
ggplot(data = diamonds, mapping = aes(x = price)) +
  geom_histogram(binwidth = 100) +
  coord_cartesian(xlim = c(1000,2000))

  #.99 vs 1 carat
diamonds %>% 
  filter(carat == .99 | carat == 1) %>% 
  count(carat)

  #coord_cartesian vs xlim
ggplot(data = diamonds, mapping = aes(x = z)) +
  geom_histogram() +
  xlim(0, 5) +
  ylim(0,1000)



  