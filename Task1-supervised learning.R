install.packages("tidyverse")
install.packages("ggplot2")
install.packages("caTools")
library(tidyverse)
library(ggplot2)
library(caTools)
#import Data from csv
Percentage <- read.csv("E:\\Spark Internship\\task1.csv", header = TRUE)
Percentage
view(Percentage)
#Visualising the Test set results 
ggplot(Percentage,aes(x = Hours,y = Scores) ) +
  geom_point() +
 
  geom_smooth(method = lm)+
  ggtitle('Scores vs Hours ') 
# predict Percentage of student based on no of studied hours
#Find Percentage of score with 9.25 hours
p <- as.data.frame(9.25)
colnames(p) <- "Hours"
cor(Percentage$Scores,Percentage$Hour)  
model <- lm(formula = Scores ~ Hours,data = Percentage)
model
summary(model)
res <- predict(model,newdata = p)
res

