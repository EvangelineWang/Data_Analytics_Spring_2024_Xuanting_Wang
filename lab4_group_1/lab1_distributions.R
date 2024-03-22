EPI_data <- read.csv('/Users/evangeline/desktop/Data Analytics/lab4_group_1/2010EPI_data.csv')
EPI_data_name <- EPI_data[1,]
EPI_data = EPI_data[-1,]
colnames(EPI_data) <- c(EPI_data_name)
summary(EPI_data)
#attach(EPI_data)
#fix(EPI_data)

#Cumulative Density Function
plot(ecdf(EPI_data$EPI), do.points=FALSE, verticals=TRUE) 
#Quantile-Quantile?
par(pty="s") 

epi_values <- as.numeric(EPI_data$EPI)
tf <- is.na(EPI_data$EPI)
EPI <- epi_values[!tf]

#Simulated data from t-distribution:
x <- rt(250, df = 5)
qqnorm(x); qqline(x)
#Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

help(distributions)
# try different ones.....
dnorm(x,mean = 0, sd = 1, log = FALSE)
pnorm(x, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(x, mean = 0, sd = 1)

