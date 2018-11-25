getwd()
setwd("D:\\R")
full<-read.csv("D:\\R\\titanic3.csv",na.strings = c(""," ","NA"))
colSums(is.na(full))
library(ggplot2)
ggplot(data = full,aes(x=embarked,fill=survived))+geom_bar(position="fill")+ylab("Frequency")

boxplot(fare~ticket,data=full, main="Ticket-Fair", 
        xlab="Fare", ylab="Ticket")
charts.data <- read.csv("titanic3.csv")

p4 <- ggplot() + geom_bar(aes(y = pclass, x = sex), data = charts.data,
                          stat="identity")
p4