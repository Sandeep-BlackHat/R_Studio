library(ggplot2)
library(dplyr)
expenses <- read.csv("dailyexpenses.csv")
View(expenses)
str(expenses)
expenses$Date <- as.Date(expenses$Date,"%d/%m/%y")
str(expenses)

total <- expenses[,2:9]
compare <- rowSums(total)
View(compare)
compare1 <- colSums(total)
View(compare1)

#Compare expenses

fd <- expenses[,2]
a1 <- sum(fd)

med <-expenses[,3]
a2 <- sum(med)

groc <-expenses[,4]
a3 <- sum(groc)

fl <-expenses[,5]
a4 <- sum(fl)

tl <-expenses[,6]
a5 <- sum(tl)

ph <-expenses[,7]
a6 <- sum(ph)

electric <- expenses[,8]
a7 <- sum(electric)

misc <- expenses[,9]
a8 <- sum(misc)

detail <- c("food", "medical", "groceries", "fuel", "toll", "phone", "electricity", "miscellaneous")
avr <- c(a1, a3, a2, a4, a5, a6, a7, a8)

df <- data.frame(detail,avr)

View(df)

ggplot(data = df, aes(x=detail, y=avr))+ geom_bar(stat = "identity", fill = "purple")
      labs(x = "Items", y = "Expenses", title = "Comparing Expenses")
      
      

      
#Line Chart
      
cm <- expenses[,2:9]
dt <- expenses[,1]

rs <- rowSums(cm)

dg <- data.frame(dt,rs)
View(dg)

ggplot(data = dg, aes(x=dt, y=rs)) + geom_line(color = "#00AFBB", size=2) + labs(x = "Date", y = "Expenses", title = "Total Expenses")


#Pie Chart

pc <- read.csv("piechart.csv")
View(pc)

pie <- ggplot(pc, aes(x = "", y = amount, fill = factor(expense)))+
  geom_bar(width = 1, stat = "identity") +
  theme(axis.line = element_blank(),
        plot.title = element_text(hjust=0.5)) +
  labs(fill="expense",
       x=NULL, y=NULL, title="Pie Chart of expenses")
pie + coord_polar(theta = "y", start=0)


#Scatter Plot

md <- expenses[,4]
de <- expenses[,1]
dm <- data.frame(md,de)

ggplot(data = dm, aes(x = de, y = md)) +
  geom_point() +
  labs(x = "Expenses",
       y = "Medical",
       title = "Medical Expenses")
