
#   ____________________________________________________________________________
#   Load Librarys                                                           ####
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


