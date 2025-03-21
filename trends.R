library(readxl)
library(zoom)
library(outliers)
transistor <- read_excel("TransistorCount.xlsx")

# Part A
x.linear <- lm(`Transistor count`~`Release Year`, data=transistor)

par(mfrow=c(1,1))
plot(x.linear$model$`Release Year`, x.linear$model$`Transistor count`, 
     xlab="Year", ylab="Tansistor Count")

abline(x.linear, col = "red")

# Part B 
x.loglinear <- lm(log(`Transistor count`)~`Release Year`, data = transistor)

plot(transistor$`Release Year`, log(transistor$`Transistor count`),
     xlab = "Year", ylab = "Log Transistor count")

abline(x.loglinear, col = "red")

# Part C
grubbs.test(log(transistor$`Transistor count`))

grubbs.test(transistor$`Transistor count`, opposite = TRUE)

