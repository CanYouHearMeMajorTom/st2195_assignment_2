install.packages("tidyverse")
library(rvest)
library(tidyverse)
cars<-read_html("https://en.wikipedia.org/wiki/Comma-separated_values#Example")
tables<- cars %>% html_table(fill=TRUE)
length(tables)
secondtable<- tables[[2]]
write.csv(secondtable,"Vehicle.csv")
