
setwd('C:/Users/tiago.pereira/GitHub/shan-carter-class/bar-chart')
prices <- read.csv("subscription-prices.csv")

class(prices)
dim(prices)
head(prices)
head(prices, n=20)
names(prices)
prices$X2013
prices$X2013[1:10]
class(prices$X2013)
?head
prices[1,]
prices[,1]
prices[,c("Network")]
prices[,"Network"]
prices[1:10,c("Network")]
plot(prices$X2013)
prices <- prices[order(prices$X2013, decreasing = T),]
plot(prices$X2013)
barplot(prices$X2013)

barplot(prices$X2013, col="lightgrey", main="Total control!", ylab="Price")
barplot(prices$X2013, col="grey", border=F, main="Total control!", ylab="Price")

#sorting
prices <- prices[order(prices$X2013),]
barcolors <- ifelse(prices$Network == "ESPN", "red", "lightgrey")
barplot(prices$X2013, col=barcolors, border=F, main="Now with custom colors!", ylab="Price")